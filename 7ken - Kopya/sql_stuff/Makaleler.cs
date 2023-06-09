﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.sql_stuff
{
    public class Makaleler
    {
        public int ID { get; set; }
        public int KategoriID { get; set; }
        public string KategoriAdi { get; set; }
        public int YoneticiID { get; set; }
        public string Baslik { get; set; }
        public string YetkiAdi { get; set; }
        public string Adi { get; set; }
        public string Ozet { get; set; }
        public string Tamicerik { get; set; }//ÖNEMLİ TamIcerik değil Tamicerik
        public string ThumbnailAdi { get; set; }
        public string TamResimAdi { get; set; }
        public DateTime YuklemeTarihi { get; set; }
        public int? Okundu { get; set; }
        public bool IsDeleted { get; set; }
    }
}
