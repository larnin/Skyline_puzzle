using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class PauseEvent : EventArgs
{
    public PauseEvent(bool _pausing)
    {
        pausing = _pausing;
    }

    public bool pausing;
}
