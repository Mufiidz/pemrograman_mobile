import '../model/desa.dart';
import '../model/wilayah.dart';

// Add all data here

List<Wilayah> listWilayah = [
  Wilayah(
      title: 'Kota Bekasi',
      desc:
          'Jumlah Penduduk Kota Bekasi saat ini lebih dari 2,2 juta jiwa yang tersebar di 12 kecamatan, yaitu Kecamatan Pondok Gede, Jati Sampurna, Jati Asih, Bantar Gebang, Bekasi Timur, Rawa Lumbu, Bekasi Selatan, Bekasi Barat, Medan Satria, Bekasi Utara, Mustika Jaya, Pondok Melati.',
      image:
          'https://www.google.com/maps/vt/data=KjTfo-WcFHDrqsNNdRiUMwt2OEnja-hPNqY_t9jESUDzqLJan3M4_XzVS-pRpkMLgINmwVrZV9-szduUtxwl2Nye5bFPg46aBfcWz8Nqk2mrf-PopSbWFT7D3JgtjYtgIQiLYdQWjt9ELkJ7Dpqx-5ftM3lSiHAMxydQcYyeBg13r-p9lfX21fT0vkXJ7GUz7RT3RraqFb8VTJD0ytLBrmyWuW-ogcwA-WBhh2jTCqOL7U2SgNIh9VbZ_0dMZg',
      letakGeografis:
          '106o48’28’’ – 107o27’29’’ Bujur Timur dan 6o10’6’’ – 6o30’6’’ Lintang Selatan.',
      luas: "210,49 Km²",
      listDesa: []),
  Wilayah(
      title: 'Kabupaten Bekasi',
      listDesa: listDesa,
      desc:
          'Jumlah desa di setiap kecamatan berkisar antara 6 sampai 13. Kecamatan dengan jumlah desa yang paling sedikit yaitu kecamatan Cikarang Pusat, Bojongmangu dan Muaragembong, sedangkan kecamatan yang memiliki jumlah desa terbanyak adalah Kecamatan Pebayuran. Kecamatan terluas adalah Muaragembong (14.009 Ha) atau 11,00 % dari luas kabupaten.',
      image:
          'https://www.google.com/maps/vt/data=bRFfki4q918qUGxyuroPruVJd5NU-yZ7iaCsF1w_TmdtyramJ98Zjf67t4nizptHdIdFxlf-wuscxITUF4Idb2pzEHcO8ms2HlzvzlMbol52UT3pO4zXAe5jQ_9RyCjgsCCaOHrwOMMwRKM5u6M-56eDDwUQgdqDwHaxaPB6C9d_OxspPh8Mrt3BXMMJlkbHAlwaFqbgAerrWluFlocFCIbRRjf02n5kJ-auHB7XRJbt-XIB8-5S12KoFTN4Tg',
      letakGeografis:
          "60 10' 53” – 60 30' 6” Lintang Selatan dan 1060 48' 28” – 1070 27' 29” Bujur Timur",
      luas: '1,274 Km²'),
];

List<Desa> listDesa = [
  Desa(
      title: 'Sumberjaya',
      desc:
          'Sumberjaya adalah desa di kecamatan Tambun Selatan, Bekasi, Jawa Barat, Indonesia.',
      imageMap:
          'https://www.google.com/maps/vt/data=7FwDXL9l8JGaB1j2LkESxwteYcq7zMeDpbN1o7T74iwquSM8L3SntuDycamY1LabIr3RR6mMNvLO-6Da-NCemLmSQhYcmFdMjGAk6CESwoNdVu-98tJLbDVyLERhbOj6ggUBsevEHNgnvGyTbgimaObxwooiuwrkuCmcPAx-dsSFRwJIsr7Vzed7cFtKAH5wUCGGtFaDiY-nNKJN4kX-WLbjaizb04E4JpPBJeTqRKqf8_15yZ5y_FW6Oqr24A',
      linkMaps: 'https://goo.gl/maps/DG8umacrrPMTCRKP8',
      kodepos: '17510',
      kemendagriCode: '32.16.06.2010'),
  Desa(
      title: 'Sukamahi',
      desc:
          'Sukamahi adalah salah satu desa di Kecamatan Cikarang Pusat, Kabupaten Bekasi, Provinsi Jawa Barat, Indonesia.',
      imageMap:
          'https://www.google.com/maps/vt/data=UDEkMPphpjXoNBalyoTYH6GYSS6JvRyp1xaphjZdeh2b7vO4PlD0p7M_Rmm28eZpGfkapiSP0kzcVLgXsVcPmpdN1XZPD3kZE9Au20Wu7TXGfrTWiD359xeMzodNno4O75vzIqxQ_ANsZS5f1lSfoe4BtCx-AvABZULijWChHuXwJhzJbmngkAht48mL_huVIqa5egrr0Q38I9p44nPOY05lALi9gBZ2Ge1-M27ML-tmnC7WyTgtIxKquiZApg',
      linkMaps: 'https://goo.gl/maps/3BG8JCuJdwYb18to8',
      kodepos: '17531',
      kemendagriCode: '32.16.20.2002'),
  Desa(
      title: 'Ciledug',
      desc:
          'Ciledug adalah desa di Kecamatan Setu, Kabupaten Bekasi, Jawa Barat.',
      imageMap:
          'https://www.google.com/maps/vt/data=S18E2vAPEBUeDM5dU6RamO3qFMfVtx7Ejkgsi9-08oGtqs3TLO6J8K40XwxdVzWzoXkAOY9HQeVo_LHXIYjE_3F-RticMgvt907iJdGXVbPm0Cr3pubcrNUisliQdgJeUBJ68f3nD5TBEbBX__FjIaNqfHCND2jIdaAhWNB3Bo4n0TnmKg5XUJDUGYyL88q84hGa17Zm519dmsmaAURocAHOUf-FWOHzLbdgLE6Pwd-w7bBtivsLpLe0QK_P2Q',
      linkMaps: 'https://goo.gl/maps/CPhER6sgDmrRcpEx8',
      kodepos: '17320',
      kemendagriCode: '32.16.18.2004'),
  Desa(
      title: 'Karangsatria',
      desc:
          'Karangsatria adalah desa di kecamatan Tambun Utara, Bekasi, Jawa Barat, Indonesia. Desa ini memiliki kode pos 17510. Terdapat taman bermain dan danau Rainbow Alamanda untuk tempat rekreasi keluarga.',
      imageMap:
          'https://www.google.com/maps/vt/data=AYE5h6QxPAvDrrT06wH8FJveQjbC9IOV5ukN-f-8Zm5AsmypeqnP0uwbggKNwVG0RQBttLEUrEVw58BBjLivDapkxi5LiYnveALo7hxDhwKj-6iF8JEP6KERgU4WTq7Vm_0JhJrmIDx4wJzBD9hKecO1K1xpDj_w6_oe1IKS9u1hwhCceQTkuZiOPdP0MVr0xuPpQ65W_QqNPvV47QFveFEOqb3hnFBBT4LfL6YkVCtKv-Ho6BdEBYC1ERPPcg',
      linkMaps: 'https://goo.gl/maps/FVTDKzxqxaydb8ov9',
      kodepos: '17510',
      kemendagriCode: '32.16.05.2008'),
  Desa(
      title: 'Cibarusahjaya',
      desc:
          'Cibarusahjaya adalah desa di kecamatan Cibarusah, Bekasi, Jawa Barat, Indonesia.',
      imageMap:
          'https://www.google.com/maps/vt/data=yHlPS6F9Qtk81h3338Ef3iUm8RPwvIUSTB8EuqGmByTB14t-d8prArlG5_zT5svlFCPT1_rBCIJ1FAmaZOKKHR4tdKJvCGM-C-b1_8wnDnsDESt5anExQ253941bpCWM4HE_gIPQgr5lpXeVumHgOA_oSrlHqzrbFt1Rc8toWUQn9G07JMBMd42U9_1MRvMBpwkb4oK0qLxXUabF5qI1t2wyKJkEvHBptYqOSp2lJt9jPWuWZKP5JWOm8bJo7Q',
      linkMaps: 'https://goo.gl/maps/SybAFGj9h81a6mWP9',
      kodepos: '17340',
      kemendagriCode: '32.16.22.2006'),
  Desa(
      title: 'Pusakarakyat',
      desc:
          'Pusakarakyat adalah desa di kecamatan Tarumajaya, Bekasi, Jawa Barat, Indonesia. Di desa inilah terletak Halte Pasar Modern Harapan Indah yang merupakan satu-satunya halte Transjakarta yang terletak di kabupaten Bekasi. Nama-nama Kepala Desa Pusaka Rakyat: 1. H. Amrulloh Tahun 1976-1984 2. HM. Naman Tahun 1984-2001 3. H. Mursalih Tahun 2001-2006 4. Irfan dadi Tahun 2006-2012 5. Abdul Wahid, Sos. Tahun 2012 sampai saat ini',
      imageMap:
          'https://www.google.com/maps/vt/data=t3gPVfqvgaWB8dN4X865EwMK_6xTqIgKHcAHNQPVsYSoc7iBgA3wNAV71991A_jdVy8jCzDb8hOKGPCC_cAs99lNoQ6Zd7GU_UIprmDJ1dqSGJwPyKjq63XHOILruvGwVBle-GNjtQHUigI16ePPNRiydH7DCkuydRy25oixKBiQ2mFXnWprkOiHjWpg_6_gIgxb-0_mFju2XK9XLrF7-ov4-97OwFibE913H1AHZ6kD0ak971RJHzeercHZFg',
      linkMaps: 'https://goo.gl/maps/XLAhK7GdSRpMYjFu7',
      kodepos: '17214',
      kemendagriCode: '32.16.01.2003'),
];
