Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4026C10DCE
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 17:30:23 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EBCF206BE
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 17:30:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=Sony.onmicrosoft.com header.i=@Sony.onmicrosoft.com header.b="oKeqfizF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8EBCF206BE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A2E888DD5;
	Fri, 13 Mar 2020 17:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EGZZG4Bcddat; Fri, 13 Mar 2020 17:30:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C4FC88DD3;
	Fri, 13 Mar 2020 17:30:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 61E8CC1D88;
	Fri, 13 Mar 2020 17:30:21 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08488C0177;
 Fri, 13 Mar 2020 17:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 033A08774C;
 Fri, 13 Mar 2020 17:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UblbrRvEBp4; Fri, 13 Mar 2020 17:30:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2134.outbound.protection.outlook.com [40.107.94.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91DFA87748;
 Fri, 13 Mar 2020 17:30:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkjF8ZhxvU9rdNiu35ieEJM0/rJBfaY+7eiqylTU3MGPXNrPkLZyjxMTrVJ79XpeOkWADq0bxQazvkDncwwmWEWmZpFkdWCALgAMP5qjzpkihVIIeFvPpJHhlHgfda8RtHt14o1IKLrEleW+V6ulPHeFkGLZZ3UqD1fN9wcpMPMgSNVU+1Gq1jiVyUwRP+rKayFPUM0CXSxom4X70wGeyR4wm9NcUeu4SgXE86MC++5X8mVyOiqIpEKvAsV0STGS5ZZDn3ycEE0BBnCeaBcnd4mrx//9VfZvdKxx1rJTMRbQYfaRIJw+Ek4/jRpn31XEBvVbbuMd33460ygG7Uuldg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/OrH4sDDy59TTgSUtKQVIIKzF6OruIe159jg/0wQbg=;
 b=bIxmpPVJ4Mo0/1kIoI6eiNtQMfHh+MRcsdVtZyOHeFTN9bN1ugjfy7wyxfKJE+G+6d8fRcFcUM5Mbo5g/R8mCXSJLQsePcoithWcFqnHTYvf8ebS63Cwn4Wz1vRB8UVmUEoWj0LpoeIMoWXNUPt9+QNxJPy5OsxNhIMlJYLOib9xGQlDArRbsJQtq73ExUKb2iYfR76v+j8ZyzrRETJ4hN0Qz+AsQFVJBgLlR0iA6BE+SIhBlabIaFxRWrFpabb22AJSLOWXMHsl7bLlUH4D7xCQHXoPvO3hL5XM1846ZlD7WA9ZBv++1Ol5r/a+eG4ngJvkMejaIPG/P7kfJokJow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com; 
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/OrH4sDDy59TTgSUtKQVIIKzF6OruIe159jg/0wQbg=;
 b=oKeqfizFNtLxDbqtm8RDrrQGSy3m+6exrFMrx4VnAQ5nt5ZHln7V9QD4qYR/Ld3QYEIe4PBJOIRmg7SJ/h7VrLeJSOgV8oUOGANsZ40mVHfOj5rbeY7QeKco8uWiU06Qm3n2c/bn7nLTXmYFya/X7fnAz0bp3ZnR5+3QpnNMKj0=
Received: from MWHPR13MB0895.namprd13.prod.outlook.com (2603:10b6:300:2::27)
 by MWHPR13MB1309.namprd13.prod.outlook.com (2603:10b6:300:a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.9; Fri, 13 Mar
 2020 17:14:51 +0000
Received: from MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::308b:ce00:680a:333e]) by MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::308b:ce00:680a:333e%6]) with mapi id 15.20.2835.003; Fri, 13 Mar 2020
 17:14:51 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Jani Nikula
 <jani.nikula@intel.com>, "Theodore Y. Ts'o" <tytso@mit.edu>
Thread-Topic: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
Thread-Index: AQHV+Uv0ZLfY3Fh6mEGHSGNqs9wC6ahGv/AQ
Date: Fri, 13 Mar 2020 17:14:51 +0000
Message-ID: <MWHPR13MB089537C8E2D61AD441672E86FDFA0@MWHPR13MB0895.namprd13.prod.outlook.com>
References: <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
 <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
 <20200313103720.GA2215823@kroah.com>
 <CAMuHMdW6Br+x+_9xP+X4xr6FP_uNpZ6q6065RJH-9yFy_8fiZA@mail.gmail.com>
 <20200313081216.627c5bdf@gandalf.local.home> <874kusl50q.fsf@intel.com>
 <20200313145206.GE225435@mit.edu> <87wo7ojnrl.fsf@intel.com>
 <1584113200.3391.16.camel@HansenPartnership.com>
In-Reply-To: <1584113200.3391.16.camel@HansenPartnership.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tim.Bird@sony.com; 
x-originating-ip: [160.33.66.122]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1cd7dd3e-0099-4e4d-19b9-08d7c7720a80
x-ms-traffictypediagnostic: MWHPR13MB1309:
x-microsoft-antispam-prvs: <MWHPR13MB13093461D0ED2CCB6A2742ECFDFA0@MWHPR13MB1309.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(52536014)(26005)(81156014)(33656002)(55016002)(5660300002)(86362001)(71200400001)(81166006)(2906002)(9686003)(186003)(8936002)(4326008)(8676002)(64756008)(6506007)(7696005)(66476007)(66556008)(66946007)(76116006)(110136005)(66446008)(316002)(478600001)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1309;
 H:MWHPR13MB0895.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: sony.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vnYgXh7I+L5gy6vmBKTijtjdDZvptjnXlJHQEKzIL1tQqGVsuyT9QlhweJy/H4XvAvyorycfrmlmYg9HlfsiNeGyzW/2bwHjbIh1EKeZeZscGbLPAl89ixfIYh0TQbyqhJjxlpIVu0+Svs6i6vbbuj+fpfvKlyIOrvMb4t2FTsuSUCgVmrTeGjNePABEDRd9caDTbO5v0LvFEMlCj2ZHPwBv9/n5thQOo3+n8Sd538WFo/j7SI15mfwg7GaebYq0VGNtmPRDo48x90BbRIUFc0DosAz3U0ftn0xMhKAMD1qCIDBI9MIYCpRR+7hGJ+I9YoeXULTLLt2PgKHZ9/P7EpM7WNK5+SnXPJVXIu51rVexlvdm6JGn8aq6FXldF5vj2naMJaBX9Lz8Dnz3oLJClIhOpF3k3D+vWwy9sixPExPNM6kwoZJiwARPvwO8UPaD
x-ms-exchange-antispam-messagedata: 3YrGpA2bX1Ve9nd3W7RQfjjr6qyJIDO41Ns83F18ctzW6TdEIHHMU2+lQn452KdI5Ebef3k/h4yjJLoO/CRt0HDHacSRrSSYfbP5lYMimSH6sgF4ZbU1uAkTOzGbKpXiWzmYOh/qpjUVGdvMc5eFUg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd7dd3e-0099-4e4d-19b9-08d7c7720a80
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 17:14:51.0981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i3zczZ6/9ohOA3DYqbT2WQnbNMrYw0fbb/PJROppcauqX1lS2hlmVpe5tcNv+LYElCKoIfvD7XVSj2fu0japOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1309
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 Vlastimil Babka <vbabka@suse.cz>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>



> -----Original Message-----
> From:  James Bottomley
> 
> On Fri, 2020-03-13 at 17:08 +0200, Jani Nikula wrote:
> > On Fri, 13 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> > > On Fri, Mar 13, 2020 at 04:10:29PM +0200, Jani Nikula wrote:
> > > >
> > > > Have you considered whether the eligibility for running and
> > > > voting should be made the same? As it is, absolutely anyone can
> > > > self-nominate and run.
> > >
> > > That's always been the case.  However, at least historically,
> > > people who weren't physically present has never been successful.
> >
> > Oh? May I ask for that to be clarified in the TAB charter, please.
> 
> It's a historical observation, not a rule.  In fact, it does have an
> exception: GregKH was elected in Edinburgh in 2012 without being
> physically present at the voting (although he was in Edinburgh at the
> time).

I was elected in Prague in 2017.  I was onsite, but had a conflict so
was not present for the vote.  So it's happened, but it has been rare
for someone to be elected while not present at the vote.  I'll be honest.
The fact that ELC was co-located with the kernel summit that year 
probably had a lot to do with my win.  IMHO it would be nice
to reduce the effect of the event pairing on the elections, so I really
welcome the movement to absentee voting (even though it helped
me once :-) ).

With regard to clarifying it for transparency, I think that would be good.
We have customarily sent out a request for nominations by e-mail
prior to the kernel summit.  I don't recall the wording, but I think 
the nomination instructions included the information that you didn't
need to be present to run.  If I'm mis-remembering this and it's not
there, it would be good to add it.
 -- Tim

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
