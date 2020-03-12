Return-Path: <SRS0=xs+t=45=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA35C10DCE
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Mar 2020 23:01:44 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B9FC206F1
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Mar 2020 23:01:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=Sony.onmicrosoft.com header.i=@Sony.onmicrosoft.com header.b="o+fQS098"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B9FC206F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A93C8794A;
	Thu, 12 Mar 2020 23:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EmDfK-2IVKQF; Thu, 12 Mar 2020 23:01:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4633F87680;
	Thu, 12 Mar 2020 23:01:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EC11C089F;
	Thu, 12 Mar 2020 23:01:41 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4456C0177;
 Thu, 12 Mar 2020 23:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D21F7203C4;
 Thu, 12 Mar 2020 23:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gw5Y3ULMgKYJ; Thu, 12 Mar 2020 23:01:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2137.outbound.protection.outlook.com [40.107.236.137])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B21F203A9;
 Thu, 12 Mar 2020 23:01:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqERxKtBwTyOIfMvrCsiHTt79xefqp/EK76TSWagvY0Y/G2Y1s1C/vDgKbZ7FZ18UkCbqu1qKEIrxfCuOjeT/rs5y2puiJMnbnOOHjOBHY3tM7e7mGACo6T79ezTz9g57PJH7iwp50iRhw6K/dmiwGj7gC9K2cQxEG9/VegOprj62QC/D30pX5aBOYzoR6ezhiJwbF3G7jeh1FKSxus6djDurf5qdR0hPL5l0QcglBsFgC+veC8U2ICbrRQ6Kd1SuobxuWcood7crQQTS677okti9umhf5SU/BlSkqwNLmd3azm9qFO3K77PsFEwALuImyzlAWNIIUOAek+oJ0bEJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJiJ0oi3OgrZpqRch8IMxjtNGs9+A5hKyrSpf4L3O68=;
 b=RPwwLSXZ0GBrG8wMxL6hQyqChJy0eOoe7nPGCapPkc251DnDizsInLZghn09E6YQv7u3+3EGW+y47eA1eXKf6ZchcV5EOlHwfGAJVi5iGUhyrrOq6DmDgLCZDJubqo9I0Gf4Spi/vGeAPezNfhdW3nYbfwtTPNdJwnPSUZLZsZYguzPc4G3y5Dgf/JdAlJOp0+mWSt8KhwzLguK/XT4hTuQgqzTw78eLpViQPEWDBKM4SoXGZoce/sWvzgfyElQsQ+gzeclYUMaRj6WsRbVccb4zdvvhulWWXI8dSnXtwe4GUL2o4iK4lJFWfTg5OOFtY0H/B9nsR61eifPJ7XdsYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com; 
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJiJ0oi3OgrZpqRch8IMxjtNGs9+A5hKyrSpf4L3O68=;
 b=o+fQS098Sb/JRYNfQ/joqw78WAhzf9k86m1SioWgSZtqUSOrAxGEBHhmrFjX8jq8MC9gYvb2/45CE7hgn1YcoAzUrBqBeACpT/rM3jHEQ0Hs5/0+5Vz9FG4VQ/QtK8OJd1l1MK5x7jObj6EMzokAClpImlKG//Twct4pZGA4LmA=
Received: from MWHPR13MB0895.namprd13.prod.outlook.com (2603:10b6:300:2::27)
 by MWHPR13MB1118.namprd13.prod.outlook.com (2603:10b6:300:9d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.9; Thu, 12 Mar
 2020 21:28:09 +0000
Received: from MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::308b:ce00:680a:333e]) by MWHPR13MB0895.namprd13.prod.outlook.com
 ([fe80::308b:ce00:680a:333e%6]) with mapi id 15.20.2835.003; Thu, 12 Mar 2020
 21:28:09 +0000
From: "Bird, Tim" <Tim.Bird@sony.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Laura Abbott
 <laura@labbott.name>
Thread-Topic: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change to charter
Thread-Index: AQHV+AY6iuP1MdA0uEGCyds2alnWyahFdfVA
Date: Thu, 12 Mar 2020 21:28:09 +0000
Message-ID: <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
In-Reply-To: <20200312003436.GF1639@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tim.Bird@sony.com; 
x-originating-ip: [160.33.66.122]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e3df4fe5-6593-4383-a850-08d7c6cc431f
x-ms-traffictypediagnostic: MWHPR13MB1118:
x-microsoft-antispam-prvs: <MWHPR13MB11187DB52C25BA936629316EFDFD0@MWHPR13MB1118.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(199004)(26005)(52536014)(54906003)(4326008)(966005)(478600001)(7696005)(186003)(71200400001)(110136005)(66446008)(5660300002)(55016002)(66556008)(9686003)(76116006)(316002)(66476007)(64756008)(66946007)(2906002)(8936002)(81166006)(8676002)(33656002)(81156014)(86362001)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1118;
 H:MWHPR13MB0895.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: sony.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B1cXQb2n2/M9Q9cU4qke0pbRsz+k+iWR2oaAUTWtZ9iPdEvmdh9qHdHx0qdJUMoCChTotLkyn5JxVDJH25MPYr1b/03wdvN51ONWZRuUbjHvQuTRCVz7/er2palQWvcbOuSVR1N1LRjXih+QZMA//0H0vW1JrHUcv/YR2c/kpfTNksVBIcvZZlnbV6T9BQrsel/Vwvs4fdMzu7j5OHZjNLADGMyNOr+c5RLRxjGgb2yqoFWoTdZgHesSlIv/TuPMW2yz7o9am6DKxsHT38/MkqW0RBodcXOgntsLMweOBa6SqWB1DMV/uoF97/Vm1/ypz4RJt2IzGyEonJBOv0iLx1AtcxxBJXrQdU4ixKQzMJYnaG7Ijns3c6EscQV7Qk0Pkf481DFU8/hVjziMXIPr4I34i+2JDs1nKMCoQnASiT7nIKaey3DA3ZQQ7yTATr8cw3MloEX0i2YWyDTkx4h45FN2tUkX7jG6OPAL5Kf72h+E7B5aNp8hdQzh4ui166Y1Drjq7yEspdYP8yhCYYnTYA==
x-ms-exchange-antispam-messagedata: MR6Do/yui39+jiRpOKi3cfzubYyNlulQNHJhOORVN/4N6e/4FdsROEZIrwmKdaB3wnciY8PojPC/j72yPhKmnrF1QEyudAHE8y0EEYnnRu8GPv8j3v19NwY4KB6KsCzsZO5GIFldbH00a7yO1Okbqw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3df4fe5-6593-4383-a850-08d7c6cc431f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2020 21:28:09.6801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6YKnuAJwhlAjndJB8YljzFFlme9R4m/FMjEHQlcVHivlI3xvl7acnEmKkD28aRpTpuNFJgL/PdZiIY+Hc/E/DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1118
Cc: "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change to charter
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
> From:  Laurent Pinchart
> 
> Hi Laura,
> 
> On Wed, Mar 11, 2020 at 08:19:46PM -0400, Laura Abbott wrote:
> > On behalf of the Linux Foundation Technical Advisory Board (TAB), I
> > would like to announce the following changes to our charter, available
> > at https://urldefense.proofpoint.com/v2/url?u=https-3A__wiki.linuxfoundation.org_tab_start&d=DwICAg&c=fP4tf--
> 1dS0biCFlB0saz0I0kjO5v7-GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-INWqfY8MsF0&m=rEcpcrRVZ-R-
> msxXCoATt2eqeJ0slEmwjZvSIsW2FnA&s=uCuhAV3NJJQ8ZD7FRbWtcW1p_3-DDKj2EsqssXv_hm0&e=
> >
> > - Line 2b that previously read "All members shall be elected by a vote
> > amongst all invitees of the Linux Kernel Summit." is changed to "All
> > members shall be elected by a vote amongst all attendees of the Linux
> > Kernel Summit."
> >
> > This clarifies that kernel summit is no longer invite only.
> 
> This is a good clarification, no issue with it.
> 
> > - Under meetings and membership, the following line is added
> > "The TAB, at its discretion, may set criteria to allow for absentee
> > voting for those who are unable to attend the Linux Kernel Summit."
> 
> This is however a bit more problematic. I understand the intent, which I
> believe is good, but it would make ballot stuffing very easy. At the
> same time I understood it will not be an easy task to set clear written
> rules that wouldn't be over complex and would still allow reaching the
> end goal of expanding the election to the whole community through
> electronic voting. I'm afraid I don't have a solution to propose to this
> problem at this time.

I agree with Laurent.  I'm not sure how to solve this problem, but
I think you need something to indicate the voter approval policy
besides "the TAB will decide it, and can change it when they like".

I suppose the pool of voters has been decided historically by the Kernel
Summit invitation committee.  Some randomness was introduced by
allowing voting by attendees from whatever event the Linux Foundation
co-located with the Kernel Summit.  I think in practical terms,
this means that recently the voting pool was self-selected (somewhat), but
was skewed towards people who could travel, or had employer support.
But in any event, the selection of the voting pool was done by people outside
the TAB (or at least not necessarily inside the TAB), and without any eye towards
skewing the election results.  That is, I don't think the kernel summit invitation
committee, or the LF event staff, ever considered TAB voting in their KS attendee
selection or event pairing choices.

I don't think that the current TAB would do anything wacky here.  And I suspect
it's probably not a huge concern even for future TABs whose constitution we don't
know yet. I do think, however, it would be better to have a written policy
for the voting eligibility, that the TAB members can't change on a whim.
 -- Tim
 
> 
> > For those who like diff form, this looks like
> >
> > diff --git a/charter b/charter
> > index 45816d7..70b2e56 100644
> > --- a/charter
> > +++ b/charter
> > @@ -4,7 +4,8 @@
> >       - Promote and Support the programmes with which the TAB is charged
> > to the wider Linux and Open Source Communities.
> >     - Meetings and Membership.
> >       - The TAB consists of ten voting members.
> > -    - All members shall be elected by a vote amongst all invitees of
> > the Linux Kernel Summit.
> > +    - All members shall be elected by a vote amongst all attendees of
> > the Linux Kernel Summit.
> > +    - The TAB, at its discretion, may set criteria to allow for
> > absentee voting for those who are unable to attend the Linux Kernel Summit.
> >       - Self nominations for the election shall be accepted from any
> > person, via email to the TAB mailing list, up until the time of the
> > election.
> >       - Membership of the TAB shall be for a term of 2 years with
> > staggered 1-year elections.
> >       - The TAB shall elect a Chair and Vice-Chair of the TAB from
> > amongst their members to serve a renewable 1 year term.
> >
> >
> > This change is intended to be a follow on to last year's changes to vote
> > electronically instead of using paper ballots
> > (see
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.linuxfoundation.org_pipermail_ksummit-2Ddiscuss_2019-
> 2DJuly_006582.html&d=DwICAg&c=fP4tf--1dS0biCFlB0saz0I0kjO5v7-GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> INWqfY8MsF0&m=rEcpcrRVZ-R-msxXCoATt2eqeJ0slEmwjZvSIsW2FnA&s=Kdo5ehAJ9pXNz1IVeBciY9CqASsXZ_Ai8NLdSajpDcA&e= )
> > We will be announcing criteria for absentee voting at a later date.
> >
> > If you have any questions, feel free to speak up here or privately at
> > tab@lists.linuxfoundation.org.
> 
> --
> Regards,
> 
> Laurent Pinchart
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.linuxfoundation.org_mailman_listinfo_ksummit-
> 2Ddiscuss&d=DwICAg&c=fP4tf--1dS0biCFlB0saz0I0kjO5v7-GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> INWqfY8MsF0&m=rEcpcrRVZ-R-msxXCoATt2eqeJ0slEmwjZvSIsW2FnA&s=ITok8MjtzP2G4P-KjwsfV4Ohz0qxG-mPu4S8eVf15sA&e=
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
