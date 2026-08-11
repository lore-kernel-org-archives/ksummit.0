Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD6E30C148
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 19:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.198.163.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786478093; cv=fail; b=LvGTgSd2nf7jemFpLAVi6umai35RM9y8j4Yb4a4VxPELgVBVATGQJch+pivSrYuocTXcA0k61uMQFy5RHZX3T1bFSKdN+Ubi2PxR4VIvGbJNeKsstblmcDytx+vyNF48dI5hwy/brnDvN2ZCR59z8Q10AwLpPvDo9LtbDGuHMmI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786478093; c=relaxed/simple;
	bh=SpGLjtAz2RemdRnV/ud9hOd4rdGXZ8XpDP0JyoB9ckk=;
	h=Date:From:To:CC:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=XkxjSrzw00vIIhFB49hLLUPFsmY9MaNtIiEZS9ioKFBs+tj5XO3FOwsxp2RXM8Ku0XK0/MLTKp6aq3nfgArT+T+eHAMXHYHXiLfo3qfjo8MahmDlSraC2MHGkinow/xxy2P4Lu4JAxD8dqRfSNTFfAcgDokITo0ORp8YjnS3ESs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=E3JXH2zY; arc=fail smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="E3JXH2zY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1786478092; x=1818014092;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=SpGLjtAz2RemdRnV/ud9hOd4rdGXZ8XpDP0JyoB9ckk=;
  b=E3JXH2zYtUdzPg5NKv7DPIc8a5OXO3rhpbZrMBSN+hxpqlEdtNc69Qtn
   rMKlc+pCl111zXjHKuszc1EwubJDiLbfH+l6jHtF0pcQnkRtv8as0HVwr
   Hf48nHumFy7bGjefmkSZ7DYS59o7fIqajMmCOgd6JnC2gdsBscBXDA2pi
   yfcyhJLYKEjf9RqPWQQWgEuZR5v7qbNMq9pZr2oAMQsUbhvZZFugexahs
   VekBoyjX+LQpJX9XEVr9Z2kP1sLinUj7fA4syiIEoAo6sALw1K2MBLAu2
   kErEjlVbQroskkFQpTlofDaL/se5LI98SIJ3+Rjegx5UhJfMfIJDTJfp8
   Q==;
X-CSE-ConnectionGUID: TSRqGvHaQLy8AhEVZJBUIw==
X-CSE-MsgGUID: x2ajGTuuS7GKp5Vf7cQEuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11872"; a="97680989"
X-IronPort-AV: E=Sophos;i="6.25,218,1779174000"; 
   d="scan'208";a="97680989"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2026 12:54:48 -0700
X-CSE-ConnectionGUID: 6lKEBtuZTbuaVB5YDvv+sg==
X-CSE-MsgGUID: UxEUGNv1SWOULg9gWTcJXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,218,1779174000"; 
   d="scan'208";a="288141085"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2026 12:54:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Tue, 11 Aug 2026 12:54:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45 via Frontend Transport; Tue, 11 Aug 2026 12:54:46 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.45; Tue, 11 Aug 2026 12:54:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L8dNkgJhWJpFINoUDB9kUzpbtKUw7Kv2PmTUgyP8o8nHn6ZvCpO9dZE88UwbOcXL3+rIfTGfzl2TXIyWBr7ZV6wl18BJlV7auVoUkocUZ68IyzMtV9qPhFy7elnQ01++fx7agX8f8oeK/QiikkfX9nUtGYBDLBpzvWqlxwzIb7a1icw2Kc1OGvM0V+HZ37UdocVMzw5zBGoZNPPNFb0G5ZmNHJOEptjcqzz7PtGB5PvKYeejOcdrbaiKoz+NwXZLkpSm3fYnfOv36Lv7boRX90zU8xnbqX4+CCog1JjoOYuviZfkg2vrIb+t9+OJzYwsnvzSXQwByPBMOw/sODQJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/1ANRkpH7Wrab/+y7GAq9oMt6vb0JXFI2KgzthhyPo=;
 b=GabA0N+OJBEIqHtT8arzYAxvIKmvDxmOr7R3kZ4C/zEEMJcE3upNkijQmw+MK9/GWAQVqI6yqlDK1xgPFq/MavocA4KXzSZjHudgTrtFNX1G/qw3L1up1Dfg7ikxEZhlVL6kM/NMC4yn5lwSiVLCLy9nPBTDEdK8yNFpAg4FQvFpdu5TpRuCiqKpnGDXdycNxnlgN18swT6T1kVKJ1Zs0hJIF+nKfF87Eq+4HyDbgSQo3Bi5DyvQ2p7U26HDfwFadBK0mGDbZ8RtT/6UtQLu+cFugRGVlSGaRDETTkWUCjHt4EA/CbDeVKoM0NnZOyXYo7vqCA3AjKGOzq9EfyjkFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by BL1PR11MB6052.namprd11.prod.outlook.com (2603:10b6:208:394::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.292.19; Tue, 11 Aug
 2026 19:54:43 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%7]) with mapi id 15.21.0292.024; Tue, 11 Aug 2026
 19:54:43 +0000
Date: Tue, 11 Aug 2026 15:54:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Jani Nikula
	<jani.nikula@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Dave Airlie <airlied@gmail.com>, Mark Brown <broonie@kernel.org>, "Steven
 Rostedt" <rostedt@goodmis.org>, James Bottomley
	<James.Bottomley@hansenpartnership.com>, "Lorenzo Stoakes (ARM)"
	<ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
	<ksummit@lists.linux.dev>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <ant9_jhefKix5TGu@intel.com>
References: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
X-ClientProxiedBy: BY1P220CA0040.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59e::16) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|BL1PR11MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: 64ecc7f0-dffb-4c7e-de17-08def7e26332
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|22082099003|18002099003|11063799006|10067099003|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: AJ+L6fKIvJ5ZI055sEj9ZxmCHV9cAQrL90e0ihT5ka41UtlePJ8zRZivr0PyUnkp4fcECV0LumT/yIkn9/EGo4LlF+97sqbvgZIVwlH07uW/L4DtuxcJ1taTWjjqKeeW8tVrsWHTaPhmQLKhDDjmIm+LLXdqJUFABBw6Jjkl4cQiYL+s4gd8pE62fg4W/8paURlLWVxwA1SaXlpocD3/IAFk5PYAQb+cK1mtm/PqLcNBeXsR61zLz9nRWgNelQ4HXx+C2l6DjFQMbew82SUj4h8ZbNXLoXJQy7irsKj0zoXCzJg6Wy8r71FEP0IH8RH6xmtADUA+qvhABPj12ecwRLm0OlUeCC0QDcYMjgf70QTr6z6Hk34imwP5ckbT20kuf45sBKpZ8Ljgx3Ft/QoFJs+LklTy1wZbiXbTA4OS+vrTCXmmTCxkli2IyZXhXHlLoV43AhFo49gscHnEcOlYvwDH+2kREoakfaB8uuxn9+KldLDdjHDqCkOiPGo/u+IaIhEiVD9rj6eBqqQ9qKSE8/it0vmnnFQJguVBn/uSwft/roimVuQvLUwi0qxVu3zPay5FfqR8p4vhCleniCp6wYEE1GcGsdHRInAqFsMcF8kRBvlgdX+lcqr7Fb7EhHFpY/RnP+V52JTnZBEtp2DwsXcwdPCAXH9Nrg13+EmLgl0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5073.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(22082099003)(18002099003)(11063799006)(10067099003)(56012099006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zJX+geKWEtxKMsPiq8BFZAMLFpe5n3BZn2+9Ew4ok5OmZqeGn8QdmMgk6Gwc?=
 =?us-ascii?Q?9IXQhFz4cCgQtABFwtv1U03G8N155SMBDUU6EVFt25J87SKF15fSTp94K7Kv?=
 =?us-ascii?Q?UU02GW1azcQ1FO5ACPg2VpoN0T9WiWNvvRiAxY8pQv3bUfKvgNmDQPq4D7Xu?=
 =?us-ascii?Q?EXh6FDaIB+gFUqwpgVTBg9XBrEkYKiw5TglWZXDILMh3mXquI0cxc5CJp98j?=
 =?us-ascii?Q?es1jq2cxllYxIRqfErvQ6gljaSK2bdTzm6Oc64dZBdF46q7xWW9/Tvf4GNN6?=
 =?us-ascii?Q?USjqv3fu8Zkv0BIcV8pZ2QGdzHqiRW2zLBPXi2I7OZMqcWzVOoW0eCBEzIDQ?=
 =?us-ascii?Q?IWgGMbafnGgK9n8+iQvYcmn5Y7+XzGz8HhvHHWu/uHPU/FSSKC9zad0C7wAY?=
 =?us-ascii?Q?Y/qpkWVPHOZmZlB2i77TBEomYhdJmU+qK2tVRkXs9VBTJc3vvj2if2GwloVf?=
 =?us-ascii?Q?Yeff8Kqpg/6BGRrjTMo58+WJdFx2KhkGfQRqL7wqK6i90yQ3gGKqmIlqWHq/?=
 =?us-ascii?Q?TAuFgi83dLNmzWR0JlaoVXY/RM+Ms+ZInvqkaOkB8LOmxqNaNJhCQhcZA0NC?=
 =?us-ascii?Q?vXZJ8gODjPLvCWvgceejKcBTey38WEl1I9cryjDWRYVSx5SjYZ7a6ZanbfQ6?=
 =?us-ascii?Q?KWtEtG1PwSI54IcIQP7Dmn/16WzUb3hQGgaUkF68onpE5SLkQ13bYd/zss8Y?=
 =?us-ascii?Q?wySWmEkWDTQ1cPl/nQCHDy2CNJLBwQSqOOVqxWbLgB6vQRpmoZcAi03QVghw?=
 =?us-ascii?Q?Rzb1+wQaDQvkjW+8dNU7KFiE+i9V21qMG+SFBByPweq0x+6MPkAdeWgShWIZ?=
 =?us-ascii?Q?cNSsHBEHUKIcU2w34MbQo9Gih6BnDdixTttTNNZWm0IbWjrl/voPdHEWgw8x?=
 =?us-ascii?Q?djOjhVZFy6DrcojTQ0rVmhv+CD8TwbEnYSasiYzxOJH0BaWcdviW1bcagl3l?=
 =?us-ascii?Q?C/17Lo0lxAKD3NwLWVC5i3Rf+mwT/F5/HtHuN6UlLgpenNN221ukRsb2T6ZD?=
 =?us-ascii?Q?HksOJy1PQGjwsaHCXhYEOI+F8ErBXHku80wjd3pOvBrkDrRaRSDXBNA90I8w?=
 =?us-ascii?Q?blPtQWvVKdT/XpRNsksKR12C2jcu9BnpGWMo24DUTwAEUyCHeTBNBc7RlaxX?=
 =?us-ascii?Q?rgiw7IIWQwbvnyQe64ejdEQlFeiqyNmyawogF8n/BDBVq9IOfp+kIKfxIBS8?=
 =?us-ascii?Q?HhmgrxMLMFc7RUyHNCVthtuF3LgQvUoGghy1/mMHILY2qqvOf1Cc8dFb7vRq?=
 =?us-ascii?Q?h8YVpAFNKxl5pkWl2PUC11Ww6AMsIvAzARsNgHtRZYjeTbUuhHQLK2bSdutq?=
 =?us-ascii?Q?EUCw+cRukaYMdyZbj5+6/gGVzJeVjcqPEKEa9EPLwSDfZMCoIAftxa35lOO1?=
 =?us-ascii?Q?4NTb1MnFb0YKZ8xij/1ThcvMayTavYkr81myrmvvqRJXGcp1BrWr5pE+Pch1?=
 =?us-ascii?Q?ab2ltebVBXthxB3127TKTZcxwOZ6xDjzLMvi0Uo+yyEDJCVs6Py56NMMX4QQ?=
 =?us-ascii?Q?YRwr7ZAuRrx7yjRGNDrsTnyanrlOMwjliwmV8o9vvgECHCZc1cCNKqfCUplF?=
 =?us-ascii?Q?VGrrPNWro+8V7h23b70mxSuXBONdoTtV2Hu5yz0xPMHiwXKrYJr7bE744XVv?=
 =?us-ascii?Q?0omMekxaVuhd8qbXTXM+a1g86zXVo3HKbf+d+Qu4x6HZajo7vRSEqS+qrb4D?=
 =?us-ascii?Q?6SiP0vOy3KQni0rEncmrNhJG8/Yf97KBWL3f61xae5/N7nK17eyaVuyrLb7t?=
 =?us-ascii?Q?OMlgAryMLw=3D=3D?=
X-Exchange-RoutingPolicyChecked: FJQNDP0xO3X3TpsIuwO18Oa/EsOLL9+XAy3BgTz6P0boBHDRbn8n+KqcLdXyDAgziiet4Ld6cMpxwe3S+vRn1Gm5B2CyjvPyZGR892cLT3MGoZCKsyuXqGOEvVpxe/G4Q705SyyfBsX7Fj/+ZT5ffxAjxO3jL2LfzMC7X1MCCyvmXdrAjeTqAF+cmKROaXvP7vIx3WFqV/YTk69Zc2VJ9gWhABY12CifLDudYWj5/IFyMkw4uRbJARW+O4cxJV/5UFQfnbUyEAF958UTeebp9GAtC6HCSFegWU1zGU2iYO/WdBlz7Rg4PcUqh8CF5NzF/CRcUVIJwLt0VWYD9W7pxA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ecc7f0-dffb-4c7e-de17-08def7e26332
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2026 19:54:43.5611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sDhmAW1iWzWAX2p1qPBsMt/h6vcz14HMEPbY0/j7Sk8ikb87M+PtT3BAU2PJcMX7GHU5O2mJqNlh/G94JWPTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6052
X-OriginatorOrg: intel.com

On Tue, Aug 11, 2026 at 09:12:24AM +0200, Geert Uytterhoeven wrote:
> Hi Dave,
> 
> On Tue, 11 Aug 2026 at 05:30, Dave Airlie <airlied@gmail.com> wrote:
> > > It's not even all of DRM, it's specifically the AMD and Intel driver
> > > stacks which as far as I can tell just routinely cherry pick all their
> > > fixes between their development and fixes branches without even
> > > considering the possibility of either merging up the fixes branch or
> > > just waiting and letting the fixes propagate back.  None of the rest of
> > > the DRM trees ever seems to cause these issues.
> >
> > AMD and Intel are just the two largest teams with the longest
> > pipelines of internal engineers and teams. There are between 50 and
> > 100 people in those groups, across multiple disjoint teams feeding
> > into a single driver. It just doesn't scale for all 50-100 people to
> > understand the cycle of the upstream Linus tree at all times for all
> > patches.
> 
> Doesn't this cause internal (to AMD and Intel) issues, too?
> How come we cannot educate contributors at these two large companies,
> while we expect other contributors to be aware?
> I would hope the people who do the actual commits do know?

We currently have 52 devs with commit rights in drm-intel and 47 devs
with commit rights on drm-xe (I'm sorry, but I didn't check the union).

But honestly, I don't believe this is the key argument anyway. The key
argument for the drm-intel flow is the CI, pipeline (like Dave wrote
below) and also for historical reasons. When we didn't have this clear
separation with this quarantine weeks (-rc6->-rc1) many last minute
regressions were introduced causing hic-ups on the -rc1 flow for Linus.

Probably worse in our case because our regression makes the screen to
not appear... I don't know.

But well, let's say we keep the quarantine and go with the -fixes and
-next branches without the direct cherry-pick, but the commiters deciding
for witch branch they apply the patches. (Similar to drm-misc flow).
I still see some potential risk scenarios and not a clear benefit:

1. Increase the risk of hic-ups in other fronts. For instance: patches
that should had been merged to -fixes only going to next and forgotten
to be ported to the previous version. And patches that should be new
features due to the risk of regression, added to the previous version.

But here one could argue that in a distributed commit rights flow, this
is exactly why maintainers role is more critical, tto ensure we are not
missing anything and that the patches are moved to the right place.
Fair enough, but this makes our hashes more likely to change. We try
to keep the non-rebasing tree to avoid disruptions in OSVs and many
other teams that are consuming our trees.

2. The conflicts would happen anyway. I still see a lot of conflicts
in the drm-misc flow.

3. Harder to manage the conflicts. Our cherry-pick flow brings some very
obvious conflict resolution to the table. If you are in a newer kernel
you likely only need to go with it is already in our -next branches,
if you are in the current -rc based you likely need to go with what
it ported to -fixes. It really is not something complicated to solve.
But if you go with a flow that the patches don't have the same baseline
like we have the -next and our -tip, then you get harder conflicts to
solve and likely to make more mistakes.

> 
> > Which means for CI reasons and pipeline reasons, things go into -next
> > is the default, our -next trees are always open, and get disconnected
> > from upstream next from rc6->rc1 so not to mess things up.
> 
> Just merging fixes into next[*], and resolving the conflicts, before
> publishing the latter would help a lot.  That would mean the conflicts
> would no longer impact every user of your next branch.
> [*] This doesn't need to be the real next you will send to Linus
>     later. Many maintainers use a conglomerate "for-next" branch that
>     is never sent upstream as-is, but its sub-branches are.

Well, I was going to tell about the drm-tip, but that you already know.
And yes, we cannot have that for-next because it contains topic branches
we really don't want to send up.

Dave, Sima, Jani, perhaps we could instrument dim to create a drm-for-next
that is the merge of all of our relevant branches excluding the topic
branches?

Thanks,
Rodrigo.
