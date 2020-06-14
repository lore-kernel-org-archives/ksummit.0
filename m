Return-Path: <SRS0=7LdI=73=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7469FC433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun, 14 Jun 2020 14:13:45 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C2132098B
	for <ksummit-discuss@archiver.kernel.org>; Sun, 14 Jun 2020 14:13:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C2132098B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17CF488618;
	Sun, 14 Jun 2020 14:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfUtOS3Sb+im; Sun, 14 Jun 2020 14:13:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B232B885E0;
	Sun, 14 Jun 2020 14:13:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81F2DC0888;
	Sun, 14 Jun 2020 14:13:41 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B66B9C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 14:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4FA58812B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 14:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JLPPnwXmueJ2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 14:13:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B661888154
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 14 Jun 2020 14:13:37 +0000 (UTC)
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05EE1hNQ150983; Sun, 14 Jun 2020 10:13:36 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31mw22gsgp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 14 Jun 2020 10:13:36 -0400
Received: from m0098413.ppops.net (m0098413.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05EE6Yis163200;
 Sun, 14 Jun 2020 10:13:36 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0b-001b2d01.pphosted.com with ESMTP id 31mw22gsgc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 14 Jun 2020 10:13:36 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05EE1nYL013543;
 Sun, 14 Jun 2020 14:13:34 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com
 (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
 by ppma01fra.de.ibm.com with ESMTP id 31mpe7gt68-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 14 Jun 2020 14:13:34 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 05EEDWle57016436
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 14 Jun 2020 14:13:32 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E5B2F42041;
 Sun, 14 Jun 2020 14:13:31 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 609D04203F;
 Sun, 14 Jun 2020 14:13:31 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.19])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun, 14 Jun 2020 14:13:31 +0000 (GMT)
Date: Sun, 14 Jun 2020 17:13:29 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20200614141329.GJ2051223@linux.ibm.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <CAFhKne9K5KBwHncm5-AWmRuUrtO+iJzTAvGJUEW9d6XXgyr_4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhKne9K5KBwHncm5-AWmRuUrtO+iJzTAvGJUEW9d6XXgyr_4w@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-14_04:2020-06-12,
 2020-06-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0
 cotscore=-2147483648 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006140122
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Sun, Jun 14, 2020 at 09:23:41AM -0400, Matthew Wilcox wrote:
> Also W=3D1 will enable documentation warnings. We can move that to defaul=
t if we
> want people to take documentation seriously. Last time I tried it added a=
bout
> 700 warnings to the build and I didn't have the spoons to make a serious =
dent
> in fixing those warnings.
> =

> Maybe _that_ would be a good beginner task because it doesn't take much in
> depth knowledge of any particular subsystem.

That's true, but unless we pay more attention to include kerneldoc
changes with patches that change APIs we would train many beginners this
way ;-)

> On Sat., Jun. 13, 2020, 12:57 Joe Perches, <joe@perches.com> wrote:
> =

>     On Sat, 2020-06-13 at 18:42 +0200, Julia Lawall wrote:
>     > I tried collecting information about missing or incorrectly formatt=
ed
>     > function documentation using Coccinelle.=A0 Here is an example of t=
he
>     > output:
>     >
>     > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:=
 extra
>     names mod, f_isr, h_src_arg
>     > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
>     missing name isr_cb
>     > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
>     missing name module
>     > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
>     missing name src_arg
>     > drivers/net/ethernet/freescale/fman/fman.c:2077 fman_register_intr:
>     return comment but no return value
>     > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_int=
r:
>     extra names mod
>     > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_int=
r:
>     missing name module
>     > drivers/net/ethernet/freescale/fman/fman.c:2103 fman_unregister_int=
r:
>     return comment but no return value
>     > drivers/net/ethernet/freescale/fman/fman.c:2355 fman_get_revision: =
return
>     comment but no return value
>     > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: extra na=
mes
>     dev
>     > drivers/net/ethernet/freescale/fman/fman.c:2520 fman_bind: missing =
name
>     fm_dev
>     > drivers/net/ethernet/freescale/fman/fman.c:2527 fman_has_errata_a05=
0385:
>     no comment for fman_has_errata_a050385
> =

>     just fyi: scripts/kernel-doc already does:
> =

>     $ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c > /=
dev/
>     null
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
>     parameter or member 'module' not described in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
>     parameter or member 'isr_cb' not described in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Function
>     parameter or member 'src_arg' not described in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess func=
tion
>     parameter 'mod' description in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess func=
tion
>     parameter 'f_isr' description in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2080: warning: Excess func=
tion
>     parameter 'h_src_arg' description in 'fman_register_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Function
>     parameter or member 'module' not described in 'fman_unregister_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2105: warning: Excess func=
tion
>     parameter 'mod' description in 'fman_unregister_intr'
>     drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function
>     parameter or member 'fman' not described in 'fman_get_revision'
>     drivers/net/ethernet/freescale/fman/fman.c:2356: warning: Function
>     parameter or member 'rev_info' not described in 'fman_get_revision'
>     drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Function
>     parameter or member 'fm_dev' not described in 'fman_bind'
>     drivers/net/ethernet/freescale/fman/fman.c:2521: warning: Excess func=
tion
>     parameter 'dev' description in 'fman_bind'
> =

> =

> =

>     _______________________________________________
>     Ksummit-discuss mailing list
>     Ksummit-discuss@lists.linuxfoundation.org
>     https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> =


> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss


-- =

Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
