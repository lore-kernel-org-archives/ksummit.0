Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AE5FC2BB1D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:51:06 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09D1320724
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:51:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09D1320724
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D07F88B36;
	Fri, 13 Mar 2020 10:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RmFrzIxNU51d; Fri, 13 Mar 2020 10:51:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49B9B88B5E;
	Fri, 13 Mar 2020 10:51:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B370C1D89;
	Fri, 13 Mar 2020 10:51:01 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E58C3C0177;
 Fri, 13 Mar 2020 10:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEABA88AF6;
 Fri, 13 Mar 2020 10:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfyNpYyGI-0L; Fri, 13 Mar 2020 10:50:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C473876BE;
 Fri, 13 Mar 2020 10:50:57 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id 111so9541001oth.13;
 Fri, 13 Mar 2020 03:50:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NdCnD1rhp0kIebtvrPQrBvc9ez8VJIn2F1YZ3NGfymI=;
 b=mbJwkJSWNxHTTqe9lOQbTQla9L9Sk5odqZBMeDNl3hUyEOVNvs3NTmxI4tY9cnQB2S
 2jVlX7+3LJEZoI59B3ma0LwfqXL/Wxg58f6yWFvAXt2GL6xAxJglAzaBMn9YhobJBeOV
 Y5i3SsdHBPcVoHhE+5/WT1mAvWGFYAwKL6Ol+4Hyiz7t8RJ5lh/lWUWXgCZFwNjRM1mE
 /aTmmxGvtw6/ludjJcNPI82XDq8Kah9OGW9KyRUR0pu75971pfqeyUUOYftqES07iYbg
 BWbJLOlFxMhAWUVwsWhKLRHgZm1wUhRJH/qt3801GU8/uQ6Tp17X7GGh3X4hOP6M7Iqk
 hfCg==
X-Gm-Message-State: ANhLgQ38Yq7PvFnXZu7yCtzFaR7yjPzXG2+SM3ATwA386DvyXCbRo6n0
 02enSYDGxKj1PMGYnmZn2fplAwCwFqCeqaPBa2I=
X-Google-Smtp-Source: ADFU+vupQFkPI7y0i6JcQD7lmo4nLgfJAu3D5Ee2TWOOuOx9k2VieHD0iksVrf4wo3dKi6qTpiyJKwyaNjuUn4B1An8=
X-Received: by 2002:a9d:1708:: with SMTP id i8mr10382578ota.250.1584096656312; 
 Fri, 13 Mar 2020 03:50:56 -0700 (PDT)
MIME-Version: 1.0
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
 <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
 <20200313103720.GA2215823@kroah.com>
In-Reply-To: <20200313103720.GA2215823@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2020 11:50:45 +0100
Message-ID: <CAMuHMdW6Br+x+_9xP+X4xr6FP_uNpZ6q6065RJH-9yFy_8fiZA@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, Vlastimil Babka <vbabka@suse.cz>,
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

Hi Greg,

On Fri, Mar 13, 2020 at 11:37 AM Greg KH <greg@kroah.com> wrote:
> On Fri, Mar 13, 2020 at 11:16:36AM +0100, Geert Uytterhoeven wrote:
> > On Fri, Mar 13, 2020 at 11:08 AM Greg KH <greg@kroah.com> wrote:
> > > On Fri, Mar 13, 2020 at 10:41:57AM +0100, Vlastimil Babka wrote:
> > > > On 3/13/20 10:35 AM, Greg KH wrote:
> > > > >> Not that I'm saying there's an easy solution, but obviously kernel.org
> > > > >> account is not as problem free as you might think.
> > > > >
> > > > > We are not saying it is "problem free", but what really is the problem
> > > > > with it?
> > > >
> > > > IIUC there is no problem for its current use, but it would be rather restrictive
> > > > if it was used as the only criterion for being able to vote for TAB remotely.
> > >
> > > Given that before now, there has not be any way to vote for the TAB
> > > remotely, it's less restrictive :)
> >
> > But people without kernel.org accounts could still vote in person before,
> > right?
>
> Yes, and they still can today, this is expanding the pool, not
> restricting it.

Oh right, assumed we'll still have a conference in person, and unrestricted
travel.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
