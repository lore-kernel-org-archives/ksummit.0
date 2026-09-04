Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3C03EB0F0
	for <ksummit@lists.linux.dev>; Fri,  4 Sep 2026 16:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788541062; cv=fail; b=FuIMCtTgSwpZk41Q39tuGdevcHHVWTLmPTHZFB090A2AqWyMD88BNYcAVnlXIIg7mWV+zYPj3PuikhKXVzue57R9OICcVA0c6AW1cuiDFySOT330wNYa41yEOaKHpsbS5fParzJmMSDPgMClzQ5aDpSv3R8BBYox4V6HrRqxltc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788541062; c=relaxed/simple;
	bh=6nPbkdFTtjaxypDCy84zqyQGmwzfIS4P9hieB+S9HGE=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=hp4bzSUcvSJUPdBSX2/fZVWd0WzwRgXnMM93yUCRENCTnECSl0/gtjWhtwR5k4Gu3B5351qqoGJNOIVURyB8xlb6Khfn4ZuSFQhie1V7vPM1krFGl4b1W7X6ommGwtjtYU9vSz+sojhqqKUhLzIbQuPOPQefvcnaFxZ5mN8TcoM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=As5W192u; arc=fail smtp.client-ip=198.175.65.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="As5W192u"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788541061; x=1820077061;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=6nPbkdFTtjaxypDCy84zqyQGmwzfIS4P9hieB+S9HGE=;
  b=As5W192uDHEfnifMiY3ProXkL4rHC9Z07c4EmBYc8jBEUzR3CgtJ5zou
   RfZX0BNko1/jGROy53rABTkgWUpB5xlVxGyV11ohueDNAUKSqPwdClXtW
   vPUxF0xzpliAcyy/DdZgE9uvi53KhWd9z5i9A8flEalgE8TAvbAGQGCVT
   3KKMtFO125FoKkEK2s0fjfZM8sfJGYAn59dIUGubhLBBRjOPOd0rqfJgg
   bZjb9vtQh6eC4MgmsPAzMvH6zvXGaLkXwltgkG5nt5uQrrei5Zghea8Zp
   k7j1y1IDkQln7GTcTV6bOyQHNdOuDnHX4cLP3w0uBjo2wjZ76ztAE20fl
   w==;
X-CSE-ConnectionGUID: HixnsV/FThGzy+as50ok9A==
X-CSE-MsgGUID: zJ+tOH6USrOhZs78qOQsLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11896"; a="89081029"
X-IronPort-AV: E=Sophos;i="6.25,262,1779174000"; 
   d="scan'208";a="89081029"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2026 09:57:41 -0700
X-CSE-ConnectionGUID: HU0w9X8BRLC+NPtnl3zO2A==
X-CSE-MsgGUID: NckOUuG7RF+h7TTjprT3+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,262,1779174000"; 
   d="scan'208";a="270070423"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2026 09:57:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Fri, 4 Sep 2026 09:57:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46 via Frontend Transport; Fri, 4 Sep 2026 09:57:40 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.46; Fri, 4 Sep 2026 09:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sebIu+k3ShBd+4y71pDD6IV/scsXip5Z7oZgyrUnsecSiJDJYmwoxxdDKvwhm40znPI0QVqpPBUl6mzGyIRDcPFUPZ3YYFSe4lhEdZ0FguFvgtehzJ3JJ7amEL9J5jVWYYtFVwN0Lfpkjhp+PNxBhd4GGgiAwMHsx0vpRXYLbCKIkQo2wG9j1kAmg6+wpgN98NWE52NUW161tnnPceZxUGHEz3gDOK34Oc9tBIsJj8cX/UkS7B9fzJOdcEDaV708Pv4GCu+n5/ijMn6E1uXW2NUiBpuVA1kfrZaH6ElYpcJo2ik24og2+9mrVPdFEtqEFSgmEyNY3nwOOTqNL+cy+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NcWA4lrj0m662o1vKuo0YMql1dbIIqtBhhnyMavEZTg=;
 b=Q37O99PL3vjsMnmxCPH4ExWt9iODUZ9kIH4nngFbw19zjzXPhaEzkugOjIW2GVN1UgyH/lEAjy89RDCotAY/GliBTH+Ki8LB5aVvUJs3vJFdsAmXVLVC9RbsdOA1JR6Gp5f1TYv8Yo5166WNYptsdTcWrlfx4WmliYQsWRsHd/S/DMp5RrAM7oi0SZOe+4O3ktsG4OaOxzPhmOKdTxmzEQ0QR3hBzQXApjC2WFgoRU9hcxTeWr78s0CHmHHSMuykf6UeWxA2xFOQ8FiTw9Q5TRQSH2ZyEj+r8HAj7UOCIsUNOYMZnWx4GBFvlxpG/RwplwHmU9jSkyWEwIWgxKaChw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6083.namprd11.prod.outlook.com (2603:10b6:a03:48a::9)
 by DS3PR11MB9648.namprd11.prod.outlook.com (2603:10b6:8:38d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Fri, 4 Sep
 2026 16:57:33 +0000
Received: from SJ1PR11MB6083.namprd11.prod.outlook.com
 ([fe80::3454:2577:75f2:60a6]) by SJ1PR11MB6083.namprd11.prod.outlook.com
 ([fe80::3454:2577:75f2:60a6%4]) with mapi id 15.21.0360.008; Fri, 4 Sep 2026
 16:57:33 +0000
From: "Luck, Tony" <tony.luck@intel.com>
To: "ksummit@lists.linux.dev" <ksummit@lists.linux.dev>
Subject: How to credit Sashiko with a Reported-by tag?
Thread-Topic: How to credit Sashiko with a Reported-by tag?
Thread-Index: Ad08jADi9MoYi8QRSaiEaaheSyOXhg==
Date: Fri, 4 Sep 2026 16:57:33 +0000
Message-ID: <SJ1PR11MB6083385BE00A70389C211177FCB52@SJ1PR11MB6083.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6083:EE_|DS3PR11MB9648:EE_
x-ms-office365-filtering-correlation-id: 42e22a40-d8c0-43f7-add8-08df0aa59d3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|38070700021|56012099006|10067099003|11063799006|18002099003;
x-microsoft-antispam-message-info: GkyhnI+RZmloDydgoDrFUJRjqD/ITibnis5teT0m0rzPZyJkE7Kyp2CBF/gZ81c9p+WNdM46e66NeaQRU+ARbyAx3n15PHYJelh0hdR1TroFKVpyLQaYNXE8j4If87qnWWhljvwDULS0kNSa3jbTtQtj2FU5EIjTxZK0GExYVHJ+JlMbu08hSN29u1X3N8U9b2921GexwE20AkNCIaUHlhfRRADeECuiBAcIDoYYYpraXa0hTNZUv71jZPDfQOJ3GlvQMWGlzHcUzxilHCMB8A9Q/5pbAFbBtQOFHovO9+QE4fdFS/mJWZuFsSb31/2xV5QAr4M0MqapGaELb3K212KjsMf77rnFUICO5GOOpFSQFwcWctdtPaGcnYwoaKdr0hdW/n5N/7S+kO1taIx51yV5hjkVfv0SgqIpiPJEawpMKfH2u+OI5HhYgtqrvErCy3fr8eSv7b/gl37LIsfD9yqwsXBs31RPjfCG+aM2TG5GSVWIAqLPldTQumSVXYKS4hXosgXvLi7KD6qj/1EBMW3HsduZUzTg+vBrHz1Q3X5uhMwKus7ecCCZOv/SFu2Fc70MAPwbU2JG0jvPnWlq1qG5SUQO58IDCTBTdHeet2N0FhLVN/8Tm28YrjDwRfSfvIUSoOLvQR5T+75AEUNsBAEsscIc3QsG04XUra2BQ8g=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ1PR11MB6083.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(38070700021)(56012099006)(10067099003)(11063799006)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OaATeDIl3CLc8K0k5olm+tSB9AGl/PgZq3FCFKZLe6lZ0ve1wpIc98IGpFQn?=
 =?us-ascii?Q?sCZqZ7Uz919nqi0jPULJnQCIBpGxUrzHZ8HdOFRmrEpwV36DDJDnxMr4OXIx?=
 =?us-ascii?Q?blfrfQ9NH/Y0tDnSrqjru7sXPHUyG4Lh9jpQcLOIiWG0JHS5ZBjU3HUtC4Lq?=
 =?us-ascii?Q?kGYcoDRs/3fP3iinKf7BqmUfYJr5v7I986/l71pYLDpj6hOSHKpMVooIU3ic?=
 =?us-ascii?Q?wLXbUIx5JcYcNCBF6RUTjA+7NN0mEC3OBCjPaoxvSlEaHhOEOPsm4KNvD5ye?=
 =?us-ascii?Q?KCDrTlH8hK4xiuKMgCo7/8ym0Mtu7m+RTGeOMYBH96i7kqcZoxaulhAFoghQ?=
 =?us-ascii?Q?cXsmNXxfWEU963fM4KfzoISbhg/CnBgVf8tKsdFl/FtZVVLHwKICrjE3FvFx?=
 =?us-ascii?Q?hrWq8kLJud4udnjg/KKQMDHwMPYRJ7wED6VzFngSEbcxpkIQLP+CADRNQob7?=
 =?us-ascii?Q?NiDTvwAKCtTNK/OzJyK76WOxw6sL5tM1bBORML5jnvooPl5kwc9T4ulLnB2p?=
 =?us-ascii?Q?ncqDnCO8i31nbOQZg8AXEUvR0jsL7h74+pnSh0jqhtHJsuanHRwKuFAoy7HQ?=
 =?us-ascii?Q?K4pVv9yHQO+QpLoyEaLwtRPk+6Fd0uSV20lxFoyEPT+JqqAaPv1DCN3JMIs+?=
 =?us-ascii?Q?fRriuGUJn/t+hYpq0ZNiDeapjb2SDmBrMQJebKSYGjvIyENMcVqv2CNScFtL?=
 =?us-ascii?Q?siffzBO93zIYdonjAb6ZU/p8+j4bZgAt1Ptco+1U2xtk61uXr/1Fa+i8iplu?=
 =?us-ascii?Q?F5MxK3NZcdv6cKDMmW3JkxZo7NqMmc7sxJx1bRNHu2Y6DFjqlCssK/XkdCKo?=
 =?us-ascii?Q?G1i/RThfhH7biKuCUlecBeae9uNfierlRXw53l8It7dqy9bLreQs9SLG44BJ?=
 =?us-ascii?Q?npbAN1flJsRt5aY264TCMuIC4UxNqZWWjTRbQ9x3bSG8mkweR/jJnOmWZeF1?=
 =?us-ascii?Q?BCYv3PjXBP7GD2WLZ7WMGVjAU0IvIwgza9TzbFnzQMUTKGdBr2jezRLUZPNt?=
 =?us-ascii?Q?ePElZM889tVMNc7kz3Z6r2abv+EhxI86Bw5DjRZymuUQHej9nQOXJ0fg1qQm?=
 =?us-ascii?Q?EbunVuPTAmkAjcx2qSC96FfdP8O2s/scuWaSaVdDWJpSz7dVSnfJkvYpgvVZ?=
 =?us-ascii?Q?tvAXHJfgmItCzxBKdpkDA2fCMH1APedbdg+/lBJXvTJpV+gweM9KBO6sM2mL?=
 =?us-ascii?Q?NCxKKO7tnCVbNnHTuMyTD08Oza31tFIYHCoqrv6DVVcfmtulq/BRePWHr2KR?=
 =?us-ascii?Q?kF7WRwbpyEZCHdKqo1mMQxzzM8fX0V0YIrbUcFNksWA1Y7/rUsAhtW9azlco?=
 =?us-ascii?Q?sOrY3Rp81jvsndD0yVgelpXBQpi1qaJ12D8/RIf+V+IZrhJTa/1VfK4qaII4?=
 =?us-ascii?Q?TxjMAwYqSOQHMdDaZKIy2KUdfFP4Ms0MM/9wzXU8OvMX4he/Ca6mGa/PaAyB?=
 =?us-ascii?Q?2W0Wd3dHPcRdrXo7OPRAOoP78EkaqWzO3C+2LUce1H9sXGemFfoAgVyznjKF?=
 =?us-ascii?Q?vu9kjmwv8HI+6fFcbKgoKIlz8VesyWMn40PdYAkji+yUbXv68OVeAIy9wNri?=
 =?us-ascii?Q?wIg+FN/zywE6NsOreQPIP4MtmWW2+yBt9xo9bVukqFC4RcKMBQvOyTlV+XlD?=
 =?us-ascii?Q?yJ/ORaBMjHVjPO55Pt7vDAkiTMY1zskQcD0O0XFMPB7BUMXIVzRQSojT5D2D?=
 =?us-ascii?Q?0v0wUZ8QfAz9D/5ZkjQHEUzBlABgwqvFEe5MjS1fCvGGSr5U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ytj9PUeXeK6ypI+codTUJ8ZM0oyzJJf2RwV8H1ExuJN+q3wRUqLrL+nDGO3HU/V/5YEnKOWUTbMyiBO6QFoI9D/zrCA5a7EoSL28hYXo/uJawdTv4/MMnVr+44cQ/cBHIOSxkxTK0yltnaJSiUZlRCafCBZhFzzi6l/799+1SvoIxTVWC0mZyKba4Z94V5sN6LUjECBEJi9ciqVbOnoCMBNeyWcRZpWlXdznQ3mXUERJoU/kN0RzvZbIbC3zgWZ+ED8rdzdJYNyAilKmoVLWXu6UF4ZRprW7/oIT+BsC8Nqps2Oli1bJ+OiVfhPV6iWhWh9QxjfuZgchvqKfbMbOxQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6083.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e22a40-d8c0-43f7-add8-08df0aa59d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2026 16:57:33.3510
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TS/NZ+ZNvqXKrFOxh9LlCvGDXhUEBV57NC91IovAC7tutWl4yrt2zDJ+9GGlNJg+Vz8aJuIwFOSWfvu5+wWRhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9648
X-OriginatorOrg: intel.com

I see 30 different variations so far. Most popular are:

    211     Reported-by: Sashiko <sashiko-bot@kernel.org>
    142     Reported-by: sashiko-bot <sashiko-bot@kernel.org>

which maybe make sense for those lists where a bot is sending e-mails to th=
e list
though I think that ought to be accompanied with a Link: tag to the actual =
e-mail
and scanning a few of these commits it isn't done consistently.

Different e-mail addresses in tags where one has been used. Is there an off=
icial one?

  <sashiko-bot@kernel.org>
  <sashiko-dev@google.com>
  <sashiko@linuxfoundation.org>
  <sashiko@sashiko.dev>

But if there wasn't an e-mail? I see a handful of links to the reports on t=
he sashiko.dev website:

      1     Reported-by: https://sashiko.dev/#/patchset/20260415143735.2974=
230-1-elver%40google.com
      1     Reported-by: https://sashiko.dev/#/patchset/20260424100221.3240=
7-1-icheng%40nvidia.com
      1     Reported-by: https://sashiko.dev/#/patchset/20260521021249.3258=
069-1-oss%40fourdim.xyz

That looks most useful. Though perhaps I'd be concerned about the long-term=
 durability of those links.

No consistency on whether to grant Sashiko a capital letter as befits a pro=
per noun.

-Tony
