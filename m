Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011054.outbound.protection.outlook.com [40.107.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92A2425871
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 18:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784141892; cv=fail; b=OeMIEC4IJyufU/EYCUfKzktDEypiC92yc6eK4HtZXp4hTq/9xNm/Nfm9VemlXkuhUN7Ak3xHBKGLJq0LbvS0Ge7R0/sgC8UQ11joeHdmC6AL1uviP7/dqwib21hcsSxs4p8Q9FmuSe0QscdGhfdI7LEyGEvTjhYJCCRSdDlPZMw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784141892; c=relaxed/simple;
	bh=9bHBugGDXFj0/hH5nyFcz2k7bUaa5i9+vcXoy9Hy1xg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=eTzWneCWYcEtknCU6x71hbgV0fpRXualI8qzdHL/SouPGCgecYBUNwnkE4eNmWa7sI+VQO8u5xPcufgH4CYmznkshRLH41GLmqlCMV+CUf99d0QT52DZLgQh64LayxWpCbfKGU56sEL2xUkhduePhw0vHTJFHFwXW6nQml2qM94=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=DY3MFQwn; arc=fail smtp.client-ip=40.107.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="DY3MFQwn"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yvf3ZnCO7arFCo2lT0gWTC5tQPbi/Fq7p29kh3zoPnxgra1OTCkzT9g3cZJQ2I1v+qlvHiBqcYoNdsbU+fMCWMHVTob+Ak0Tb8boTIf9jZJ4M8NI7OCumCY9DW1FZOzIux420EI4tOfn4O3Fr/WVdP9Njbs+Kk6mbZry3u4BfsD2whI9Wn3DggZCTCRjGRj853/TdzsilB7ApU0dKkWTszWFKtpsVASt7/VztqfxjhDbNTZZWnFJl56ISn1ifDGvOkZMuIGwnBU/9hcUXJ0jUxWjc4QVjWtldTa4kzRf51NreeeBxGCg7PBX8wvuRw89jvCTSqPmqnAdwJUvFz+mcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtM+EnwaURffRaArEhDRruehLNOAM072TpfH5zdAwIc=;
 b=dUoKqAirNBfBk0J7m/Em3OiDpJnjyiyZMf7OkCE78eZo5PH947RwQ/fUUZ4tTJxp2PMuBZyVQneDkREI76H+d37FNzhzCX/akRnNcg3cyYXcE6uwcXev22rftSC/0zGBf/qt3Nq8oh7uHrzO8ZfU7gxhZDLT1OLmDO1+id8ReI6+xZwBc0I/2TRiVCftw6iFzw8xesmCY+Yltmzj+6WBJ+lFmLKxCNGHQFJprOyjx30de2noFl97g9TKebYa0505DhgjPJF2UwRS2glzUcvNNuoTI3thjh8+n+UBOeeAo79ucBxr0PQBQtYPUpqWpmmQf2nCPfHUNTH8TwiGs26ifg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtM+EnwaURffRaArEhDRruehLNOAM072TpfH5zdAwIc=;
 b=DY3MFQwn9XdcySPmi6Jed/8/TiI8U/VGJzZ82fdWwRLaY5Bht2qd6ZY/zKGwOSRiNa6JpvI7OGG+qxpr9U1hjKrvFaebcwASACYBir5rZDSUea2JvPV9z5V9hveexA+FwJ0lv4m16L4Pl6lD6WKPdsNgPRtAkZyiyBTC35xVNK1i69y8ROxmelIfP4tAGeadKqmXDuK60ccW7iLNb6ImSFYwS4q6AMP1/1xq+1JMOYCgM+bvXMuKXgiZvgxxm9L5FYzsadTahNeYhP4t/gOuzyePkn2cHh/hGFA3s9w995at8q8Wrzl7JFEmb7d1RBTRdX43/GC4ZkZiYBJ/jhgkVw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by SA5PPFCAFD069B8.namprd12.prod.outlook.com (2603:10b6:80f:fc04::8e1) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.11; Wed, 15 Jul
 2026 18:57:59 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%4]) with mapi id 15.21.0202.014; Wed, 15 Jul 2026
 18:57:58 +0000
Date: Wed, 15 Jul 2026 15:57:57 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260715185757.GA191552@nvidia.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
X-ClientProxiedBy: CH5P221CA0008.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1f2::24) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|SA5PPFCAFD069B8:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b57530e-a7b4-4af2-281f-08dee2a2fcc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|23010399003|376014|11063799006|56012099006|22082099003|18002099003|10067099003;
X-Microsoft-Antispam-Message-Info:
	CKq4ZcKqnTJ3NzkzY/RskN1CnVXv2I09onw9z6r/LfFHirxxqFvnbc2D5R2Q2MflqQGIBmCThSi+Y4H9lwVpN5goXv9DmaNvX4iQJhU9hER4DNERRdwv4Jkc90vv5W2DKMz382UgHSUdVI8CPS8Et/96/QfK0eJn+KLQLfLUzuJdgtlMBmo2Nch8SITrflAKrwwmS2QIwBpy7QuUSJl1Dg+pTpHiz13XzYVIZPlNlznclCqnCFISUZQYaeXCthfjxmVMOGwDfiDDs/Y4Q+G+K4TR4+AypQnVgmxV6eh84/in4g5/YSolVNEb5LUdD/o8AUCOgmX0k6uFMbN2E6iI1/VVfXQ6vH3mWdgCKQDh/o1waJPKHgsNcA4A8YdShNMWHMPISdgjrNoycVp+XcvvrFOyCi26fgyDPO9k0yl/6n7jyJebU6bcOo+MIA6+e9LiOMAY81SprHf9/+GtfnXjChD5IBhmbDPGU4V4fGDT9tUX5rAS7cZHlc+rf6Y1Ls5ZPyanpPKrDKmS4rJ/4UOwSw11Vgd9n9acXjWHUn+nSHxPQNrS92uoyFULIFUYG0RMIF3aA4lBzIdN2IxPPoVAtjD8qJgUIQzWHnOyibPe9a+N/TQTfjd0bgDoW6z+Lkvy5q+n51KnqcnCrZDmOOz+CMheRU3NRllY+xL8lKbfnV0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(11063799006)(56012099006)(22082099003)(18002099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZlFsUDR3aEJhTTJCWXQ5NGtMNm1QVDBidEc0bGpGS3JnM043Sk1rUVhLVHBE?=
 =?utf-8?B?WTdNRnRyMnFQeGxlelF0OUNZVUdhTy91RU4xOU1hZGFyYzZzVUh6SzNwU0Qv?=
 =?utf-8?B?Q3ljY0wxdzRGbThYRmV2RkRWNGRleEhiVEQyTjFiMFFwK01sazc0bnh3d3U1?=
 =?utf-8?B?VHc5SFZPRTA2WFFld0xKWDVnbUZDMXVFNzRYNC8yRGdxUFIzbnVNQW11TlQr?=
 =?utf-8?B?cXZoeTZOL0hMYURWdVE5VHpiVmluY2pyTWF0UmFsektQOHNxN0Fqc2E4blNL?=
 =?utf-8?B?eWRpSEdoRTV4QWNxNXNEWUhDQzR1OFRub25tbXpvSjhkTmd2Tjk0bHZKQVBS?=
 =?utf-8?B?NVJpcEVLdTZCMEFkaUVsTXNXSXZPbmVuQUJSM1o2TjlRaG54ZzR6VjFnN2FZ?=
 =?utf-8?B?R2laNGZwRU1OemNoQllWK1F1NWhSM0ZUOUkzRTB0Q1oySzJmR2FOYUpsaitY?=
 =?utf-8?B?UjNTdlQ4OHhmaVI5ajU3TFEwQmhkcE90UXFqRzg5VVpkWGNxUTg0NFVRMDdS?=
 =?utf-8?B?UE80b1IwNjA1cWxOa0gwcVRVMSswb2RtaWRYZmFETXpFRmFEK1Jza0pnKzZ2?=
 =?utf-8?B?N085bWdpckZuMGN5aUIyZDNiMGtoUGpQUzNwdVFWM3dDRW53WEdpNkRCUVhl?=
 =?utf-8?B?b1VYaGNFeE1RNWFqTElhWC9WeUVSSDlKSnRLK001NGhrVFZvbCtzT1lENC9t?=
 =?utf-8?B?ZytMZEZId25CWTFLU3p0bXkvbE9VNmQyUEI3SG5ZU3pBZVBiZThQdmg2S2hH?=
 =?utf-8?B?WGUxVFZaaGVTL05pNkh1ZVRNVU9vUDRrMmVic0c5LzNmeHYrdGpJQ0NtZHdn?=
 =?utf-8?B?cVdvM055eHVRY1k2aFBHM1Q5aHNOa3c3M2psaDdMbFBKV0ZjOWpDZ1FxRnRH?=
 =?utf-8?B?cEM1WUYvNXFRaW1NdUxNNHdzVEtzSWw2VlRoK1laSUxYODhxV1VldGR1dS81?=
 =?utf-8?B?UmgvLzh0MGh1V3k4bEhmNGR1OTNPUHorMEZBemZvSFNVZlkvc3E5dHdyQjhM?=
 =?utf-8?B?OXR2eGJ3QXNOaWhlRE13VGdpTEE1WXorU3BnQVo3dXQxUkw4K2hOZFZCZmRk?=
 =?utf-8?B?bDVDb0V5TjBSNlRvZTVtODlJNFVITTFPeTYxSHdhS1V2TFFxK3BsQzE5eW5h?=
 =?utf-8?B?TnpzV2Q5UkhhVTJnNUlWcHc2bEhYenBYYVdpczZuaFhwaTc1MzRMMDNkYis0?=
 =?utf-8?B?ZWo4RkxyNHZzNG9DK2VQQTNTTzM1TldTeFJ1VWErNDR3RjkxVCtIRGFyVWw5?=
 =?utf-8?B?ZGdXVy9TTDlmN2pGSkNkVGdJM1ZqWDliYXdVcFYwMDRLN1BPZWY2MmthOGhU?=
 =?utf-8?B?RlBNZDRIaTNHS3dhWGlQdG9WK3Jyb2J2d015UWViL2pwZ1JMQ2dBUW9pMUhn?=
 =?utf-8?B?ZHBMU204R0o3YTFERURyK3dERmUvME05MDM4ZUM4QjNSTi9yb0lmZWhaUjBn?=
 =?utf-8?B?cnNYMGZMZlJqRGNLNzNYMHFJNm9hRzFMUitla3UyeFQvekh5bGVGMmNSMWlm?=
 =?utf-8?B?OHIvVmFxRW5wVGlPUGZGUTk0R1ZGVWtuMzZjaFpDczNGY1lLdkkrWVJGL3BZ?=
 =?utf-8?B?UFdJQ0x6NFl2RkFXeUo1WUpLT3J1eVRWWkp4SVZkQitQeU9zUkVwRUZjMTN5?=
 =?utf-8?B?RkhudFBqNWlUVG9YbVc2QWd0YStmZmdnWm15VFZLYmhhRWw4MXNPZWpCZFhH?=
 =?utf-8?B?Nmc3RHZRdnAxeWtHK2RMcGZtbG1mdlp1YWJta0JlRlBlaU42UnRkcUg5RGQz?=
 =?utf-8?B?TFNva2craUlON3lyTHhiL04vQk1oalMzRTRwYjdZRW9jUFFuMWNGRndIQ2VR?=
 =?utf-8?B?RXFZcERFQVYvOGVibStuMDRobWlKdW84cmE3SHRBdnRBYUNhK2pmOVRZVVVv?=
 =?utf-8?B?YWNrbHl6aG9MMGVNN0pTUkxPZ01MTGpTbXlXL3hKRmlTNWh6UlBiMFNzc2Iv?=
 =?utf-8?B?ZVhSc0wzb3FZR29vM2dQTXlnTUliWnhmcDdCeERrbExXRC9iQ0xXMzlkZ1Yz?=
 =?utf-8?B?MllsZlRLSGE5amxtRU9JRDNVSmMyajhnM1VkdWxEQ0ZJZXRsTjF3OXZwM1dk?=
 =?utf-8?B?NDlFY0g2NjUzQmpLWEN0WTNRWnVLVEF5R0NnbzJ3YWtIWktOZXdXRTZYQ3Z4?=
 =?utf-8?B?Nm5VMkZGNGI3T0Fnc3dVVmtPRjFId0l0aWpIMEhScDNyUjFRY2ZmS09zQ1Z0?=
 =?utf-8?B?cVp1NnlMZmNtbmE0SFNTUzN2ak1tb1ZhcENYeEN0VGlkWG5rMnZWM29TUThK?=
 =?utf-8?B?SWZNWWYrdzV0TVVmemZpYmVlbE15cy80ckYybmY3S283SlJQa09ORDNHcTZj?=
 =?utf-8?Q?QEh2RZQY4Go9FOX+Ft?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b57530e-a7b4-4af2-281f-08dee2a2fcc6
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 18:57:58.9182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aATH0Xov+Uq5WmqvkE7z7no4DYEhhpqYOi/FqUsOyqX2V1Gdd4tE1RYkCbaTMRx6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPFCAFD069B8

On Wed, Jul 15, 2026 at 04:55:03PM +0000, Roman Gushchin wrote:
> * Handling of pre-existing bugs.
> Currently, Sashiko reports pre-existing bugs alongside new issues
> (while trying hard to highlight that these issues were not introduced by
> the proposed change). This approach comes with significant pros (a
> steady stream of bug fixes) and cons (additional noise and workload for
> maintainers). I am considering a database of pre-existing issues to
> ensure they are reported only once (or once per year), with an option
> for the respective maintainers to flag them as false positives. This
> will also provide maintainers an access to a deduplicated and ranked
> list of potential issues in their subsystem’s codebase.

I would really like a syzkaller like dashboard of all these
pre-existing issues and a nag/summary email so they actually get
fixed.

I've gone and fixed a bunch on my own, mostly out of fear that they
will just disappear and be lost, but it is an annoying urgency. I'd
rather have as a giant todo list (that maybe other people could help
with too)

Often alot of tokens are spent to find these things, it feels wrong
that they are effectively lost in the endless stream of reviews..

> * Prompt development and testing.
> Currently, prompts are maintained in two GitHub repositories and are
> changed manually or with the help of AI coding agents. However, there is
> no established practice for testing them, especially across various LLM
> models. At the last LSFMMBPF conference, there was a discussion about
> moving them into the kernel tree. I see some pros and cons to this
> approach, but the ownership and testing models are not entirely clear.

Having them in the kernel always felt better to me, I wonder what the
cons are.

> Many engineers have asked for some sort of interactive mode where they
> can ask additional questions or follow up on the initial feedback from
> Sashiko. I plan to add this to the local review mode, but for the
> central public instance, it is problematic from both security and token
> cost perspectives. 

Could there some way to download the entire context from all the passes
to a local environment and have a local llm chew on it to answer
questions?

Jason
