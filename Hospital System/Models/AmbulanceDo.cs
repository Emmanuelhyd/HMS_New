﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hospital_System.Models
{
    public class AmbulanceDo
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int AmbulanceId { get; set; }
        public string AmbulanceStatus { get; set; }
        public string AmbulanceDriver { get; set; }
        public int AmbulanceDriverId { get; set; }
    }
}