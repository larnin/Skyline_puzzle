using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class LoadLevelEvent : EventArgs
{
    public LoadLevelEvent(int _index)
    {
        index = _index;
    }

    public int index;
}
