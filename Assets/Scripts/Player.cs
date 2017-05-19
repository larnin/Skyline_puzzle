using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public GameObject collectibleOff;
    public float fasterMultiplier = 1.25f;
    public float slowerMultiplier = 0.75f;
    public float bouciness = 0.8f;

    public float AcceleratorDrag = 1f;
    public float DecceleratorDrag = 6f;
    public float GravityAttract = 35f;

    public GameObject FxClosed;
    public Material scarfMaterial;
    public Material persoMaterial;
    public List<Texture> persoTextures;

    new Rigidbody rigidbody;
    int size = 1;
    float BaseDrag;

    Animator _animator;


    void Awake()
    {
        G.Sys.player = this;
    }

	void Start ()
    {
        var perso = transform.Find("Perso");
        if (perso != null)
            _animator = perso.GetComponent<Animator>();
        rigidbody = GetComponent<Rigidbody>();
        BaseDrag = rigidbody.drag;
        if(G.Sys.playerData.CurrentCompetence == "Bouncy")
        {
            scarfMaterial.color = new Color(255, 151, 0);
            var collider = GetComponent<Collider>();
            if(collider != null)
            {
                var mat = collider.material;
                if(mat != null)
                {
                    mat.bounciness = bouciness;
                }
            }
            persoMaterial.mainTexture = persoTextures[1];
        }
        else if(G.Sys.playerData.CurrentCompetence == "Faster")
        {
            scarfMaterial.color = new Color(255,227,218);
            rigidbody.drag /= fasterMultiplier;
            BaseDrag /= fasterMultiplier;
            AcceleratorDrag /= fasterMultiplier;
            DecceleratorDrag /= fasterMultiplier;
            persoMaterial.mainTexture = persoTextures[2];
        }
        else if(G.Sys.playerData.CurrentCompetence == "Slower")
        {
            scarfMaterial.color = new Color(78, 76, 73);
            rigidbody.drag /= slowerMultiplier;
            BaseDrag /= slowerMultiplier;
            AcceleratorDrag /= slowerMultiplier;
            DecceleratorDrag /= slowerMultiplier;
            persoMaterial.mainTexture = persoTextures[3];
        }
        else if(G.Sys.playerData.CurrentCompetence == "Normal")
        {
            scarfMaterial.color = new Color(255, 0, 164);
            persoMaterial.mainTexture = persoTextures[0];
        }
	}
	
	void Update ()
    {
        if(rigidbody.velocity.magnitude > 0.01)
            rigidbody.MoveRotation(Quaternion.LookRotation(new Vector3(0, 0, 1), -rigidbody.velocity));
	}

    private void OnTriggerEnter(Collider other)
    {
        
        switch (other.tag)
        {
            case "Accelerator":
                rigidbody.drag = AcceleratorDrag;
                break;
            case "Deccelerator":
                rigidbody.drag = DecceleratorDrag;
                break;
            case "AntiGravity":
                rigidbody.drag = 0f;
                rigidbody.useGravity = false;
                break;
            case "WormholeIn":
                transform.position = other.gameObject.GetComponent<WormholeIn>().WormholeOut.transform.position;
                break;
            case "SizeUp":
                transform.localScale = new Vector3(2, 2, 2);
                break;
            case "SizeLess":
                transform.localScale = new Vector3(0.4f, 0.4f, 0.4f);
                break;
            case "SizeMiddle":
                transform.localScale = new Vector3(1, 1, 1);
                break;
            case "DefineGravity":
                rigidbody.useGravity = false;
                ConstantForce e = gameObject.AddComponent<ConstantForce>();
                e.force = other.transform.GetChild(0).forward * GravityAttract;
                break;
            case "Trigger":
                other.gameObject.GetComponent<Trigger>().ActivatedElement.GetComponent<ActivatedElement>().Activate();
                if (other.gameObject.transform.GetChild(0).GetComponent<Renderer>().material.GetFloat("_Button") == 0)
                    other.gameObject.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_Button", 1);
                else
                    other.gameObject.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_Button", 0);
                break;
            case "KillGrid":
                _animator.SetBool("Death", true);
                Event<PlayerDieEvent>.Broadcast(new PlayerDieEvent());
                break;
            case "End":
                Event<EndLevelEvent>.Broadcast(new EndLevelEvent());
                break;
            case "Collectable":
                Collect(other.gameObject);
                break;
            default:
                break;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        switch (other.tag)
        {
            case "DefineGravity":
                Destroy(GetComponent<ConstantForce>());
                rigidbody.useGravity = true;

                break;
            case "OneWay":
                other.GetComponent<BoxCollider>().isTrigger = false;
                other.transform.GetChild(0).gameObject.SetActive(false);
                other.transform.GetChild(1).gameObject.SetActive(true);
                break;
            case "Accelerator":
            case "Deccelerator":
            case "AntiGravity":
                rigidbody.drag = BaseDrag;
                rigidbody.useGravity = true; 
                break;
            default:

                break;
        }
    }

    void Collect(GameObject collectible)
    {
        Event<CollectEvent>.Broadcast(new CollectEvent());
        G.Sys.playerData.Money++;
        var c = Instantiate(collectibleOff);
        c.transform.position = collectible.transform.position;
        Destroy(collectible);
        Destroy(c, 2);
    }
}
