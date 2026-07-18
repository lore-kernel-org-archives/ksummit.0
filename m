Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013063.outbound.protection.outlook.com [40.93.201.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D73AD24
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 23:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784416573; cv=fail; b=DJOZ295Pm1Z8P5TSFnYcf5eySsbTmOh0M/qWEgQkU4UcwPI/cVeynB/Ynw8eQOKG6v/ulFQ8O/RSKBONLiZ2xyH+hCJ6uW9WqIzXIM/2f+AnF0YW4PUquDnW3vlCT922J46e/YGgUSdmoWM4yCNqgjiG8SxskzHHXq2ELZlEMdE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784416573; c=relaxed/simple;
	bh=PCD9+5eSR4odT5Ep+vbFmolwl7okCaID/EryqoBu7fQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=h4crQIXWF+FMqFu+ahvGSZIxkRjFzmIBQX3qHEJnrch5FsX5moe5hvUdnMZY4iiPbwmr6GCgrNTVYT0XeQMbefvMhuIbyukuEUbtsikoynHDtz6d7bB3FrrDGVHOJ90tixD+byRSnVRFvd4Ts7DAVHuVmSv8nOHVjkpC/F5AdS0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=j598MRy2; arc=fail smtp.client-ip=40.93.201.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="j598MRy2"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kt1FNDjiPozvCXaeEduA6Hx16MpYA+f/twFeq/q72Y6+WeSyF4ccgHj8vCA1Yyl2ueTNgadyM1O1gSeAlslPt+bJyX/AVsJVMPniovhsVXDPei67IKTkR/fahenoElFncHBB0k4qKo6QQxkMjonesg9DU8l4OUMR0Fyo2m79PA2WVGIVmxFosi449cUkSyJNrIseydtHVbmkp4C3wmG4Df4Jt0Z60jx2m/q/GzNVOo5dqcSXywzhZ8AEpOi979VqFhOVaARHIWZHf9DoJFeL2d601xa7D8GLg+FvC7S+lwhEaC6blx2vqEsxxUaRMbNrs2ROb0w6gIeJiZeKNDEFfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jCD8ojBJOg51ug3d5J6NhYIZq7LkHcGCnMskTyrdNi8=;
 b=jAnW3bKli5VZFp9WDlRbCUoe2MvesTTygByJL/JL/Fo1bH9iu+GnthJkz5W38Z79ftr2BM0ZiFd0TgM8216MKpJDPvLadTcHi6A8xoPExDh8XMmsinSSXs+4mOxIGdlzviYcrgME65K68DWJiQW+432vTrZsCKLIKtzh74en7icYAO0xRPMClVavsJ1xs34kTCRktpoiN+NAB84Fvd0pv9FwUl4mzjn2aF+XD167j58b1xU6oWiKEQepkDYqkeX6GWh1MGF/zMO2gIRMJozl+gL0cZ4RoETyl1hty+LJnwV5LDpy9qA/24bv/QEt4pR1q7ZMwMW0HixIhlQN2Do0sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCD8ojBJOg51ug3d5J6NhYIZq7LkHcGCnMskTyrdNi8=;
 b=j598MRy27gkH3c5v66anKbNTTmvuMUX/bgftJyQxlWGf0kLEUCoVLyGe+oIgrypw7NlhxmhV3MBxtRcZs/L1YVF5PWBAsrvxTiAtAG2rZu824fqrNB1hua3Lg88+ZyI+NpdfPzuYXJc4CWb1wSHuv5m/QEtKqr4R98nkRbIFgX4xsLbgngmTjI6eHSffLDgX0AggdT+Tx+D6MO21II5jFKiVwY7NKxO/Ju6SjRcp49Qw58BCbEJA3cDI6hWzz/Cb2dYMl4nu+25J8IbuMvStyEx2fxviHQmkD14LPMTB1egZ2SPrBwNwDLeTN5ekQIRowvdUTRfmEvy91Pz3ITo3Iw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by CH3PR12MB7713.namprd12.prod.outlook.com (2603:10b6:610:14d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.13; Sat, 18 Jul
 2026 23:16:06 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%4]) with mapi id 15.21.0202.014; Sat, 18 Jul 2026
 23:16:06 +0000
Date: Sat, 18 Jul 2026 13:13:15 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260718161315.GE699082@nvidia.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
X-ClientProxiedBy: BL1PR13CA0418.namprd13.prod.outlook.com
 (2603:10b6:208:2c2::33) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|CH3PR12MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: e3b6c77d-aee0-47c0-88ba-08dee5228b30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|10067099003|5023799004|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info:
	oT8ahx0Etv3Mvkmxpf+yfH5sj2uwwF5kUHkg4BHh3XMuTdbsnPfTCc32zhUKS0x0+GRa4EL+Rqv2WK1J3oibm1i6hRe0Npi4CRUqcmzmFTXyNmgvn3pH60ceUz6xSJS/8WPmYsMJm/OmPOuIvukelxHMlWQOdNJlYpU/GjEYvsJMVMhSfVG2Xpiu7m+BbOypVGpptdpmcBSTmzkyiGYXSmoFZZyXQsSRm00C5iQEB0JaVRCV+0f2WjciXK54mLtL8gnzdAnDTzv2iU/ikOWho+JtXgvWGhwtzNU/vt90/0aklkoXzxzGfHXDTJUEqyLcm5iZdnoUzPucnk//weEGlrCAIHrVXR7bJefnbfDC3PktlFIfV6UVatsvIc03J4BnrRR9wQ5rrT2/G1Iavh3RNhfzpc6woYr3EUKP4V/TL9rzMUllvVdA3zjgO2SM9sJ9mT9gQzV4nzEDDtHlH3H3T1NnWBDBFcOAAKFOH3UVsPUM11YKg9+6DV+Sukkz6r88TZB/MmroT+AMl1EROtgVqqsB3u5cpuV9j/7oKBr+xoTzyHHSyBUHvPkB6HTr2gno0qI+4gQt7ktY7ylDh6FJ7s9FZOdhdAxz+bU5Xe9db6DTrUNSm94O5oHwYC95Z2qkXgJY11CwfmLRka4F6Fe/o8INvZPH0KFKEiR+9mOc0YU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(10067099003)(5023799004)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?TxGcXWOQlXsXK6ekcm8D6etyp1X38lMUiMlQrBIShH2V+zN5CLKAOKpSXyxt?=
 =?us-ascii?Q?2mb3W8qdSOiUprdHdkaaP00HwDhfMFRDFCc1jQCIyg1iWtHBlyMf6ZdE29xg?=
 =?us-ascii?Q?xGmPWaGENbcI7QpJA8FsY0dSxL1d/+EDBJCvTZLxDTPNKY2JoBV1lGehds9u?=
 =?us-ascii?Q?+wtzhOJ86WMFc1yU/fFm8wAnbecE8fAfT+EhDkG6cNs9ZgLVeV94NdPOCfR7?=
 =?us-ascii?Q?bJP/dp0HrvlYp8FUR8RMfwdfOH0svwj2656I0vK1dsy6/550QxjK34BVw4IF?=
 =?us-ascii?Q?OhJH7sOxjhqFqxPdUkXOoscXrFy6dpGqgrJ/qC6hVcN2iEYcDdkrKcBVtWqw?=
 =?us-ascii?Q?HcNTkfTttHYgbQj3Ikj9+uQjEWI5QDSLCwb4K610WiRUT8YY030kHgCOM0vn?=
 =?us-ascii?Q?kLbd1liMbwH0XtqRmbR4tENQ09OIVANDCVTLReE323ZOE20bbGihxHudIaQr?=
 =?us-ascii?Q?6Ew4VbA0G757i/H0CdYag5p8Dqwb7Dpm116XU6pl6/VMWB3Rded1JYvakn8e?=
 =?us-ascii?Q?kgH+ivOde9u19WmSpawygPu+mIiWnmkpzL1+8gOsJOhAUiYcA1Twliyrtio7?=
 =?us-ascii?Q?58YqnXPEaKbKaUK9cIa6dRzTSlTtcMPbnwW/npcW03+I2BqCTprc8yt+VUIK?=
 =?us-ascii?Q?tgMKU5214jBevm4KfZtUTtChQts6Yf+rxmnzy0c4YE9MtgPMa+3V5d9M3xZi?=
 =?us-ascii?Q?tsp/1WMmkmBn3CELJ1fVodRn3QfrFOR6SuzIZABs3alu8iV5ESBF/xZIesdb?=
 =?us-ascii?Q?24cJADun0pM6Le81HksZL/KLyAtdxsY7dHVXYwE+cGJwCfq4Xhr/9uic0RNJ?=
 =?us-ascii?Q?uEMvE94J3AU4+VorVuGwX5y4ijX22J4ABj1Nbu2+jTr4a14p+zxrssDn6k+O?=
 =?us-ascii?Q?w3zXzlFS7tlgRaVfuyCO27pPVZY/PR1MvPM7mZmDaRHJNqcXG8DozEui6vcH?=
 =?us-ascii?Q?RLG7e/Q7PNJUsbcNX85yLsMfa55bu6KoU0XG8s2a552Q+MPK1j12gRC9BfXA?=
 =?us-ascii?Q?4dG0hui5kCJD7UES0vlTbV5KOQ4lIX3ZVBPCaorxsz9sdUQloYIOdAioOZR3?=
 =?us-ascii?Q?+zKjq69Qu5wpB1IcsfKfhKUcoFniQIpTgNyf/IBoxt53oai6qqqXhVl2EAy4?=
 =?us-ascii?Q?6vFxBzg6uoEYuoFjeV1AoXzpkopUUNKvemKZF6Cq8UcolHHc33UEFfZQZUlQ?=
 =?us-ascii?Q?3rXKVeQsa3QWg/brMyVa+GRKP+k2KMtmbcMocuL8n8K186+IgmQUEXkkMsvr?=
 =?us-ascii?Q?jjiLHd/g7Lvt5R27v6sTXMfO95fozN2kgUg9uDEVn0otEPaGsyzAfLHRnVm3?=
 =?us-ascii?Q?oLLesScI+YsdI55VQBfdGtseF1KMo6f7w0MwG8rZ1tkLA7Q9+mt1PcFdLptJ?=
 =?us-ascii?Q?wBw67ARCKjl5VXQlr2/xgxmGKiawvpNBO4qXgZHUU7VS57mpeiNDg1s1961s?=
 =?us-ascii?Q?KfsCibaZpbgiFHIkZvWPLTIGuEpv8iXlAJRTIjXnTmUk//9diJx7jK6GlE8l?=
 =?us-ascii?Q?vS5FWZgtKTgoq7PsUkYCaE1YxzkB4vdZz1+j2+hMdkfL3OuBtSY8guGs3yXu?=
 =?us-ascii?Q?RRbQGa0+mWnitfN/9wtci3hIsbPXgnh+WwmsNpG6c+dqF+CwToClpWWcOjNS?=
 =?us-ascii?Q?cZ4r/fccPjpXAT0jrSmCYcy5qpektgclLxZs+LNyYntfWNRH/yzhQYgTBLev?=
 =?us-ascii?Q?lGwOwhu7FwMrWviNYhEy1ykyHIrYzSn6bfEyvB9i14OPTh5q?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b6c77d-aee0-47c0-88ba-08dee5228b30
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2026 23:16:06.1152
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WFMuJW5cLElRdX8z9cYS9CC6yWnD+xHUjD/QtYMlbfTbugUUU6srwphTdZ1hyNUG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7713

On Fri, Jul 17, 2026 at 04:17:06PM -0700, Linus Torvalds wrote:

> > > I've gone and fixed a bunch on my own, mostly out of fear that they
> > > will just disappear and be lost, but it is an annoying urgency. I'd
> > > rather have as a giant todo list (that maybe other people could help
> > > with too)
> > >
> > > Often alot of tokens are spent to find these things, it feels wrong
> > > that they are effectively lost in the endless stream of reviews..
> 
> I think this ends up being one of those things that easily frustrates
> maintainers: low-grade constant noise from an AI that adds extra
> overhead and another thing people feel they need to look at.

To be clear, here I am thinking of things that are not low grade. Eg
recently sashiko found a drive by in a review and then a few weeks
later the same issue was sent as a security@ email.

So in my mind this is more like syzkaller where it found something, it
does need fixing. I don't want to drop everything and fix it now, I'm
OK leaving it on the syzkaller dashboard for a month, while trying to
get someone to donate fixing it. I don't want to block anyone, but I
don't want to loose this valuable information.

Since I want to at least try to delegate it is helpful to have a
public dashboard instead of my own todo list.

> (Or feel they really don't have time or interest to look at, and then
> just the knowledge that there's that nagging thing that you don't
> really care about adds stress and frustration).

Right, I'd feel better if there was reliable tracking for these
discoveries. I don't want to make the unlucky sumbitter do anything
about them as a pre-condition to make progress on whatever they are
doing, unless the series is making it worse or doubling down on
wrongness.

Jason
