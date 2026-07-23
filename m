Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E231B320A00
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 17:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.198.163.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784826544; cv=fail; b=XO6j0S2DZBoYIygcllo2wD4PoksimbBoCBLEgykFfcWGlMXnpmH/DSp5RqXmqC14K+jN7aVETrA5d1SRxighfNTB9UfclQisw5y1iD6kba5mE/ifw6LXxEKXt068E8FRbiTIFjrSMfiyg9ipS5xaywfrkdjlQf9s1yGJ32DC1Hg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784826544; c=relaxed/simple;
	bh=KujIUmDsAZiK5OY00Xf1wFlWnNJL/7RGyf/VIDtvl6M=;
	h=Date:From:To:CC:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=c0nMYcwJocupArd2bHai0e1SNdUV9UqTuqr/d0i11KBznmhZkX1/JW2j66T6VdwOi1rgHASFx+CTyUTIEy7v0uB08Nz1JtQ4zdrB1WoPttpojIeWE+OWyJuTMypP3MuNkPVG9VeJV7n6VJZ3t2q8HFQlPD8+DWO94fi7k7E9jfg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Bo4qGsCd; arc=fail smtp.client-ip=192.198.163.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Bo4qGsCd"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784826539; x=1816362539;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=KujIUmDsAZiK5OY00Xf1wFlWnNJL/7RGyf/VIDtvl6M=;
  b=Bo4qGsCdJff+D09I16ZSgcuhTCtk/I2vSwlDMY4jsXXAmb7jQLfRJ1f6
   +HO93TFcsIe5HjlhH2vXDLYlGdkdjqCoogetTdYCvpXzJuY32shxZ6Y/K
   Kwm7SZZkWMgFQzZBEcWdIORooj79/AVeZg7sjGEu9lOIFsyXBBWYDmVOP
   YXwspX3NK9wsLbsoZ5aZ35fQqpXH4dowdgBKfzHeWTRLzUCyN2CDhU5Xq
   bOVxsJCwmAZm0ifewqZayaFYTBM+Hp4D/1Hyz+arA87UEvUu5fynFYyAB
   HD4V4S177YbtSQM92kM71r81vkQuYuq5o+N4IYvalGKtlm4cQgB0V3Kxv
   g==;
X-CSE-ConnectionGUID: Z3QwtFM6QXuK/Lhpw2JdXg==
X-CSE-MsgGUID: 3nNbxWXwSqaLD0mUVY7+MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11854"; a="111031197"
X-IronPort-AV: E=Sophos;i="6.25,180,1779174000"; 
   d="scan'208";a="111031197"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2026 10:08:55 -0700
X-CSE-ConnectionGUID: sG3uiMM8Q26ZhQtBaxn2NA==
X-CSE-MsgGUID: 2n+pB7OARZGAuQnCNLN7+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,180,1779174000"; 
   d="scan'208";a="262007278"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2026 10:08:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 23 Jul 2026 10:08:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 23 Jul 2026 10:08:54 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 23 Jul 2026 10:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HMWPtTZ5h9rqxvpwB50PkylOj63cm7BC0pMoeLBxUjWVnglPHeOcolFh4VUruyxVxo4JVkmDI+uJ1Zf3lNTo3H71e5tmK9utMvjzoNzsHzHDcMkDWo3tlpIXm0NUuyyiLkBDN6cKxFzIuZu0FKHc0Xa7oIcXtETeWrqEHJrjm1CNnGh8syZxO1QDYHF85uGcSn9EaRDQ6WMiVWnhC8N3NmCccMVv6JFPpKDGqBpime4tV6UT6862m6uUlDVo5b2Ceg5OsFuxjvV7PTGgk7YTYg/RUgj+TB6HO5R91KOlm/l9lXBieoN/kd84kdwEWg5+tKT0wN6TA23vGYec3aw/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yISBW4dM8Juq1I/DP13PRhiBYAjeFD4STvvm9vy/A3A=;
 b=KoEFdRw+BZRV6sA30S95YJi6RdpVrLoIkOzGkrwtWbIdOI0FI8TUl1AfVUQPFGCQrCvFQIQGq1K0Fl/Xb7uSir5lgfm+KmpaXDoo1ENgkGYjHK5QCBc/RiV5hcIz6BnfF74i3vzC3sTBpFtWREZrTCG84tLbQ94Do10UiPMW4jPeQArzIGRza3srrMH9A/rpu11THPBWONqeELq0dbc7xFE/F6+kpxD7W6qSio0CU6aP0lZnQsQpuAF2xZoyDsrsd6DYek0RuGOZmqR9rRw4lYFKIvwY9cweEurAhj9lk7FmqeYpEY+rwvgBwc3dakN+FrXAnkxySlsuVUxBkWqunw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH0PR11MB9612.namprd11.prod.outlook.com (2603:10b6:510:3b0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.245.11; Thu, 23 Jul
 2026 17:08:51 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0245.010; Thu, 23 Jul 2026
 17:08:50 +0000
Date: Thu, 23 Jul 2026 13:08:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mark Brown <broonie@kernel.org>
CC: Guenter Roeck <linux@roeck-us.net>, Mauro Carvalho Chehab
	<mchehab+huawei@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Roman Gushchin
	<roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>,
	<ksummit@lists.linux.dev>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <amJKmqYT3AU3MOex@intel.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
 <20260723084954.42e6a6e4@foz.lan>
 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
 <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
X-ClientProxiedBy: YT2PR01CA0002.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:38::7) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH0PR11MB9612:EE_
X-MS-Office365-Filtering-Correlation-Id: feed9bd1-081a-4739-6962-08dee8dd10b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|23010399003|376014|1800799024|56012099006|11063799006|4143699003|10067099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: bqo7Od6rp6/Y2MpXK37rr1b4LWN0g6cH3QMwUoFNoveTQ9ICuQzoVFomZ0y75Xv3buny1Yj1c+KydC9wewMeYKQXDT8gHz0B4p4nEyGXyPFqg/6VU1jraysDzEjOhP1F9cnIPTtOk/rwuqX3gIYiZGpNdZCshwKZttL6egSKTFUr7on4JfAP+cx01JVE0KmpmhF0+OdK5+RehR/j5TMjYb4fgCrvmZh72XCpyyfE0ve5ll4DTibmRPuSteTulTHSptnO5D5J88DZBoUyHnnZEVZPzhG+iqUxheo11Qis82l+5159U7WX78xULSA5lnO03RBm0OVb9V8lAGmMUaQc7S3nNoGPeMrlcJhPtYOAfR3aL3aIYKAFRTgoXfvLroEHvBnikH7bIV7Gx1j/DFFd3aZgMuzWf1fTy+WB+yeWQWjWyXnWHiZzayNog0n15VOFGPydZRUpXKFsfvirJXxS10pwZpgW4WJ4m09UcGCbd4c+7lQAZS0sogGiKFpAnmieBZ+Pzch4YPSljDpiJ5ucRNNhnVeo72HpGvvLJbIjr9JRzORTG8p9bMRrp5Ng8HSfeHPfB0s7iWWWmD+lL3VWyNDY/73TW6dYx3CC4dSsmvaUHs1oGlTUbjQOl0QEaFaI
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5073.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(56012099006)(11063799006)(4143699003)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XOz1HQSnyyzO+L+XZSUMR1A3bop6LcevK8TXUOP1uqill3SR9aFknggve5Z+?=
 =?us-ascii?Q?zrVgkbe4ch/R2urkF20HjKW7GtsmlplWfBmzjfSFG/34Hr4BrA5O3BE0MO2N?=
 =?us-ascii?Q?JCmRBGHMPEehgRCZTkXW9A4QDVqo5OlckzyU4oxA1E1KGGHn+9rwgg6Btz3E?=
 =?us-ascii?Q?+w8gnmCJsD8weAKfc2EaYXiBc1/Dj2RCv5POmqOpjMPrxTiUpZUmMsYtu24D?=
 =?us-ascii?Q?kPXjNV5dX7G0xAJBUtSrtXtxqlF56/I0Uj9GGwHzOnXuj1B8RKcntZsW7uza?=
 =?us-ascii?Q?jfs+WOgZmQo9kSpGLefbjoBsqFouhF4yMo0tXs8mJ/Tg8Ofzw9UnqZShJiD5?=
 =?us-ascii?Q?oHDRfll7LMhYOf8FWv8aM8/0y1RhUcHpUxdmkvHLQGu7so9hLdhw0i63dqn2?=
 =?us-ascii?Q?6JCBjTrHYM4DnHCpkEg4nuc4zHVs+WRx+ruuj/g9Jtb4nGLVHerezarlUFLk?=
 =?us-ascii?Q?Erj9PgSyHgkXW+TL2AE6/rlxsEG9551d8ABW+5aBhjldLUiI8YhVK6dwvVkN?=
 =?us-ascii?Q?fVyw1Jhphb6tw/TrDb4mma0VApaWtKVzl4yQC7qqb5tNap1cSG/z8ZF9tq7g?=
 =?us-ascii?Q?dshAn0Q01YR4XeH7y0DHaGhJxIxpyYMVSjNNVuKlrXOnGWspK8yyrSJdWWJl?=
 =?us-ascii?Q?LqJha8phvFTJ+y0BKPbgQea7HQMlomltR1qo06Fg8pQV2GSK7/jcKSYgFBhq?=
 =?us-ascii?Q?VH5xjjqM5XAZiqrnHLTQF77CbUy+Szwd3TGvp0arPtAx01AGXNlgVaf5R2vm?=
 =?us-ascii?Q?rJMA+2IB8cP6le9Hcm3ueDj+WSLige+JG98KZ8T8YV0zpCvjxAUMSRPgKnLU?=
 =?us-ascii?Q?3oxndAK9AzPuWbK8z6r+JwRVXp8mmPYZWF0dVxWuI6kWysd3MXYILnJazRid?=
 =?us-ascii?Q?TFMuxTkAGuOyEzZ/FCxLAk0GRfxqW6Eek5W7+FgjKuyHCigTIywDxOrldj98?=
 =?us-ascii?Q?E6keDvD2pItN723FOlBG2glyrS7jQxJvVe1lgWn1OnqdcWHrX/qGfr4ZdMe5?=
 =?us-ascii?Q?vHJKO4i9UIYgYkp+p73fGty5p0wCIG7SvVVCDgga+YBeC+PeyllaF3ujouRd?=
 =?us-ascii?Q?unkhTVGIx5ZNd9hmBMBEmI7o1YoTYhuUom5larHQ6yJje3KZPtyTJadyX8VA?=
 =?us-ascii?Q?r6MOyYRIM31tllCmNALwVVZb2OA2lC7oRHFa8oesogqrQoidOhv7cVt7aSMc?=
 =?us-ascii?Q?4/YgPLu2kEds8R4CZwtBIaxFoJYsm6rELS05r6XEb4Q955KmJfTAlCLhgvJs?=
 =?us-ascii?Q?jg53MbWJDx+Y4epVR/9NeKKI37dQeTSJNllBdj+l8L0Am5F5zllSTGVpeSzR?=
 =?us-ascii?Q?6jCFu55V6WfpVC+dWNR3FORbn9xd9vV1kMIkgA6S8zwAKrJl0m4wNhcJ40Lg?=
 =?us-ascii?Q?Yly78WhpjfUtZ0WzGBBLPY/rhz/4mz3RN+bgnlunjRFaAnlohDt/sn9J/nkn?=
 =?us-ascii?Q?iLdZKqVPoEGP4mp43f0D12xIBB4Zu2c72uIbhBPH+f7ljsz+N1UInPIc8rJO?=
 =?us-ascii?Q?3w4+vEDYyBv196cV9EGdZeybM9idstno/8QAbSr+E+mwasdFemFKg+mmgYl8?=
 =?us-ascii?Q?14SpL8mePYF2qUXnWZSTRwpFeNMPcdqYN+EOrpPlgof1qGPyWHcsYQL+rD00?=
 =?us-ascii?Q?piaNYQ6mPTpxRSdQN0HlMRdylKvklGT2gFk9W0hlFmNWFVkc+lbPoP0Uu2xC?=
 =?us-ascii?Q?eZd/IZD/sI9hmVo9fgf5Iz48mCKAuCDi3N+vsuxaujDoDKynstNrQeG861tQ?=
 =?us-ascii?Q?UJ4DnHEeoA=3D=3D?=
X-Exchange-RoutingPolicyChecked: deWRKrZeqJYWbAwJv6EpHQwEUm8evrQda89DyEEMfhgmhW872nWWjMtfS5ZbTHNskRTE+Hhngkx3aAAsJ0G1iJVla0b2ZvwFA+umzIx7CT2cal6Vsu06izZgQ0eoRvXQx9bePL7txqT8/g5xvnDTQBBhAh75hmcZQHHUGilIV9kdqOXVn8+9OL1Lb4Gq1/0pZhUjnOTuaANxCNrndT5r0qBaNnrwC39q/T4NnP+u21vVbLIE2nlGm35lgXIRxqrHgmicCcTL6HmCKS+UGtv4/5sDGrJR6ISZPcsqQZdmLCygbVvkt1WOTA2/A1MKnvMJOCJyI8SIXqKcI0QHU3Y1Zg==
X-MS-Exchange-CrossTenant-Network-Message-Id: feed9bd1-081a-4739-6962-08dee8dd10b7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2026 17:08:50.5307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0K0AOlKuKIMIewojK89GbvrCDHC8rZVEoYMLVkS+5i02HZEe+fBRFXHNYHSMNEzwDjEE9titmD2Fo4ersQkDGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9612
X-OriginatorOrg: intel.com

On Thu, Jul 23, 2026 at 03:59:37PM +0100, Mark Brown wrote:
> On Thu, Jul 23, 2026 at 07:34:58AM -0700, Guenter Roeck wrote:
> 
> > Last night I got a patch submission of a ~350 LOC driver. Sashiko reported
> > 9 issues with it. No, it is not ok for the author to ignore Sashiko's feedback,
> > and I am not even going to look at the code myself until the reported issues
> > are either fixed or the author explains why they don't apply.
> 
> > It is fine (I would say acceptable) to ignore _pre-existing_ issues reported
> > by Sashiko, but I do expect patch authors to address new issues, or to explain
> > why they are false positives or don't apply.
> 
> > If you want to give patch authors the option to ignore Sashiko's feedback
> > entirely, fine with me, but please do it on a per-subsystem basis.
> 
> OTOH I had a submitter send 15 versions of what should have been a
> relatively simple quirk over the weekend iterating with Sashiko, then
> the initial human review was "this seems like the wrong approach".  It
> feels like there's some happy medium here.

Yes, we should have a happy medium point here. And let's use the tool
to save both maintainers's and developer's time.

I agree with Guenter approach here and in a matter of fact, I had just used
a few minutes ago. I had to review a series where I noticed Sashiko had a
couple of true finds. So, I just asked the developer to look to that report
and fix that before I waste my time with reviews that the tool could already
spot.

But I was already aware-of and okay-with this entire code design idea and
approach and this review would be more about the correctness.

And this reminds me about the old but gold Sage's post on patch review:
https://sage.thesharps.us/2014/09/01/the-gentle-art-of-patch-review/

"""
1. Is the idea behind the contribution sound?
2. Is the contribution architected correctly?
3. Is the contribution polished?
"""

