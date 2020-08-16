Return-Path: <SRS0=dGYf=B2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D3AC433E1
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 17:51:38 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8562D20738
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 17:51:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=fb.com header.i=@fb.com header.b="JM5p1HBd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=fb.onmicrosoft.com header.i=@fb.onmicrosoft.com header.b="LBPLVNgs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8562D20738
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=lists.linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5909C85B80;
	Sun, 16 Aug 2020 17:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKYgNQXrOqDb; Sun, 16 Aug 2020 17:51:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BA8285B4A;
	Sun, 16 Aug 2020 17:51:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6733EC07FF;
	Sun, 16 Aug 2020 17:51:36 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7440EC0051;
 Sun, 16 Aug 2020 17:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6976D85B80;
 Sun, 16 Aug 2020 17:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id azb4ErrgMt5f; Sun, 16 Aug 2020 17:51:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
 [67.231.145.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C0D085B4A;
 Sun, 16 Aug 2020 17:51:33 +0000 (UTC)
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07GHn6Ro011571; Sun, 16 Aug 2020 10:51:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=facebook; bh=vhEWYpzyeRHLgYu8mZkpDQ+KQSxqXNG7FgMSC7ccjNs=;
 b=JM5p1HBdCRFSwPJiiQV65BtONypNf6g6lXHdbmUTcxKJXWmf6Yj3JW0wjlNQm5vpyCLf
 Ib3AvWVbWCelxpS4DuSRIuv8B26Jdt6LP6dwAddzESYuKUJuLOXEp67/JsXOVTePm97v
 8THxLa9skyChASkzAnRRXKuD4NlPFP8iziE= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 32xyhk1wpx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Sun, 16 Aug 2020 10:51:32 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.101) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Sun, 16 Aug 2020 10:51:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V73zqZC1SlTglvkEwQR5uY1Rbr3U+w53ZcjG7ESYYgM8X43yecH9qC+XaXxoCIIzbU9veeZER/PsvVxBVKHSWr33XnW2lUs+X5exri4S9ihnv+Fx7xC4G9SIMdZgOLEyHE1zLdtEaPkP5Ai9MbEntPz35b/wI5HGaySIjplMSJMoBPYVbNSm5kaokeSpD4Sq7OCc+1uyafy2SNFxMWINYquBuNIwGa5sXPqSLaBnDVXCMNr/ETW4ZRiwV7kQRIsI3pyBggOi0sqdBDJw72n3bIz57AqrHIEoZf5+43iks2yDEyBeH83Na8nYpo1/g9FqUYnTAk5zbxQwUtSp79ZbPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhEWYpzyeRHLgYu8mZkpDQ+KQSxqXNG7FgMSC7ccjNs=;
 b=dVEHowRHjiXPXqbkM8/tqU/CrGHctRmy43lbUqXfpAolLCPzSTXGQzl2bvnIl4LfbzRfMDQjwNWFiMHUJR2QftC+OGCnbZRzcce6c4QIZkjcxkUqzfv3ChvJC41mmKWlu7KXhbwDmmddaTKEWdEkzQ2mSd/A04OZ3XSoIYATDKglKDZ2xbmTsSdVhFXiuuRd9VTZU8cKl0eGd4lTeU/IJHMW0SM+g5QqNAU91W2ZyeTWlDISU8rdj6XFfbrwfP/j8MEAe5vmpet7josA2+1FmkqHiFuBevuW+6EBrPemxtGRLFt3uODcEPp/A/MwUWRGUbnKyv4vS+B0bupTVY64QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhEWYpzyeRHLgYu8mZkpDQ+KQSxqXNG7FgMSC7ccjNs=;
 b=LBPLVNgsLrXITFIuNsDYztylRWT43zRJmhO97b4GznOxZnPSrKIIWjHAkCmHU0pems/XzXfhXywdAhB06WhW94Y/DZSlJzFDlF9GOu9Xh+4ZqKLYLHnVuCmElaWUgCWaJxeryRmPz0JOzXYMfLc6sZNtkE3XbOTEqayfqQWd6t8=
Authentication-Results: lists.linux-foundation.org; dkim=none (message not
 signed) header.d=none;lists.linux-foundation.org; dmarc=none action=none
 header.from=fb.com;
Received: from MN2PR15MB3582.namprd15.prod.outlook.com (2603:10b6:208:1b5::23)
 by BLAPR15MB3922.namprd15.prod.outlook.com (2603:10b6:208:254::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.16; Sun, 16 Aug
 2020 17:51:16 +0000
Received: from MN2PR15MB3582.namprd15.prod.outlook.com
 ([fe80::bd7a:9d1e:2fd0:34e6]) by MN2PR15MB3582.namprd15.prod.outlook.com
 ([fe80::bd7a:9d1e:2fd0:34e6%6]) with mapi id 15.20.3261.025; Sun, 16 Aug 2020
 17:51:16 +0000
To: Tech Board Discuss <tech-board-discuss@lists.linux-foundation.org>, Kernel
 Summit Discussions <ksummit-discuss@lists.linux-foundation.org>
Date: Sun, 16 Aug 2020 13:51:11 -0400
X-Mailer: MailMate (1.13.1r5671)
Message-ID: <B52600FA-CC34-437A-B0AB-42FAF0D6A545@fb.com>
X-ClientProxiedBy: CH2PR16CA0025.namprd16.prod.outlook.com
 (2603:10b6:610:50::35) To MN2PR15MB3582.namprd15.prod.outlook.com
 (2603:10b6:208:1b5::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.129] (172.101.208.204) by
 CH2PR16CA0025.namprd16.prod.outlook.com (2603:10b6:610:50::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16 via Frontend Transport; Sun, 16 Aug 2020 17:51:15 +0000
X-Mailer: MailMate (1.13.1r5671)
X-Originating-IP: [172.101.208.204]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 423e2137-dfdf-4268-9b52-08d8420cf94e
X-MS-TrafficTypeDiagnostic: BLAPR15MB3922:
X-Microsoft-Antispam-PRVS: <BLAPR15MB39222AF26B3F09CCDB32EABFD35E0@BLAPR15MB3922.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KN8AM2cpyLRqDDQPErH5/WbtJdLeo9TxYdED7/b07Vp0CxCdZJOPmea9DF6dq7tdNOBRnUPBkApqxxVeFSqqJZ/o/QThk/XmQMDrHi0dV9u/dwgtHgV0EAz4ksJdoiKAFZyLecA3calG8GnrFz4gFnMWq11evpW3/s4AYbugxzwxOCJk17GXeFMmqNzvaY5UYIbyCgQX0XsYzlb0/2MB+56WLh0M4wUw2mUGEpGnpozH/2s9GZOZh+9l1Yx50vj90m9zIoN5SmhcBHcPnvZA3IoxirUm9Bb25GcxKaR7Esz6iysMj1fxQYCLZUPy7Ezq4fv0W+bX8QO7gftpMEJYjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR15MB3582.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(366004)(136003)(346002)(376002)(16526019)(36756003)(52116002)(5660300002)(33656002)(4744005)(186003)(8936002)(2906002)(26005)(450100002)(956004)(2616005)(8676002)(110136005)(478600001)(86362001)(6666004)(6486002)(66476007)(66556008)(16576012)(316002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 9E8LURf/ogARcevIe6w/Xa+woGmEC0F8EaCexsBhAKjVVDYOmMk4U5asCfzfzeLoUpKPehTjU3KDHBib5x2rLrWmxVI7TSHyMOZNhmjZBbb4Zs6IqeDLeLfA4JGhvIWBzotH90IKYyvdpBQ4kWKZPu6TizfbILGvo35Za2zrk3r41hZaD+NbdM7Zk7Ah6uL4npDTGOO4/04ezoy9WjZI81rrpUjUlO4riNhAYjxcNDo4O4cKfOej1Iw/ab8ARpmbF7+fRn1Ip+tw6Z0n8i1UMv/AWmNT3A88ZE82AgveB5heyE8e04qEt25KDw7WP3e0FfBHQZNucH+0WDmXXqdKjSLhEiJ1hKhGMGYieKP1O85YNlc2EyNpz7+qVtDKqwyfHOaQjFfpxCFshKhJ6mizWIEkxvY920ZE8tJNkFmFoB1btaVHGgrDK1377PhJHavli1o7NJ9Xmd5I/I/y4Jeyq3uTJJqt8pwsOhW7kP6qxZ/NBZoCFubV9joDMCvJCiWQGOXAS0qJLNUUULUQ6imGNpi8ZNRbML4b0e+icpx1sfQonRvGTwIc1Eeo0cdZxFSYUp3UCswsGTfKNww7Yk9Kvv+yQcSqyP8rKzv43vvhUSGXKT07eWIk7FoiywNg7hnmSR1RuIuOWkxBm/VdHsopEQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 423e2137-dfdf-4268-9b52-08d8420cf94e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR15MB3582.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2020 17:51:16.5272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcPseAlLRAbibfUnE9KS1343rqAmMyDOPIb1JswXMiCs4VFhfFPz0Wo/FeJ8RDLK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR15MB3922
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-16_07:2020-08-14,
 2020-08-16 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxscore=0 clxscore=1011
 mlxlogscore=901 spamscore=0 phishscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008160147
X-FB-Internal: deliver
Subject: [Ksummit-discuss] self nomination for TAB elections
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
From: Chris Mason via Ksummit-discuss
 <ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Chris Mason <clm@fb.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

CkhlbGxvIGV2ZXJ5b25lLAoKSSdkIGxpa2UgdG8gc3RhbmQgZm9yIGVsZWN0aW9uIGFnYWluIHRo
aXMgeWVhciwgYW5kIGhvcGUgdG8gc3RheSBpbiBteSAKcG9zaXRpb24gYXMgVEFCIGNoYWlyLiAg
VGhlIExpbnV4IEZvdW5kYXRpb24gaXMgYSBrZXkgcGFydCBvZiB0aGUga2VybmVsIApjb21tdW5p
dHksIGFuZCBJIGRlZXBseSB2YWx1ZSB0aGUgY2hhbmNlcyBJ4oCZdmUgaGFkIHRvIGhlbHAgdGhl
IExGIGFuZCAKdGhlIGNvbW11bml0eSB3b3JrIHRvZ2V0aGVyLiAgSeKAmW0gZXNwZWNpYWxseSBn
cmF0ZWZ1bCBmb3IgdGhlIG90aGVyIAptZW1iZXJzIG9mIHRoZSBUQUIsIHdobyBhbHdheXMgaGF2
ZSBncmVhdCBhZHZpY2UgYW5kIGlkZWFzLgoKU2luY2Ugc3RhcnRpbmcgb24gdGhlIGtlcm5lbCBm
dWxsIHRpbWUgaW4gMjAwMCwgSeKAmXZlIG1vc3RseSB3b3JrZWQgb24gCmZpbGVzeXN0ZW1zIGFu
ZCBzdG9yYWdlLCBhbmQgZXNwZWNpYWxseSBvbiB0aGUgQnRyZnMgZmlsZXN5c3RlbS4gIEnigJl2
ZSAKc3BlbnQgdGhlIGxhc3Qgc2V2ZW4geWVhcnMgd2l0aCBGYWNlYm9va+KAmXMga2VybmVsIHRl
YW0sIGFuZCBJ4oCZbSAKcmVhbGx5IHByb3VkIG9mIG91ciB3b3JrIHdl4oCZcmUgZG9pbmcgdG8g
bWFpbnRhaW4gYSBjeWNsZSBvZiBmZWF0dXJlcyAKYW5kIGJ1ZyBmaXhlcyBiZXR3ZWVuIG91ciBw
cm9kdWN0aW9uIGtlcm5lbHMgYW5kIHVwc3RyZWFtLgoKUGxlYXNlIGZlZWwgZnJlZSB0byBlbWFp
bCBtZSB3aXRoIHF1ZXN0aW9ucyBvciBjb21tZW50cy4KClRoYW5rcywKQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1h
aWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRw
czovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRp
c2N1c3MK
