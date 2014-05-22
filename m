Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4F96726
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 04:04:29 +0000 (UTC)
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1D161FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 04:04:28 +0000 (UTC)
Received: by mail-ve0-f177.google.com with SMTP id db11so3681242veb.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 21:04:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140522094835.3bf5ba5a@notabene.brown>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521182552.2ed57ad7@notabene.brown>
	<CAPcyv4iJ8vO_7BfqyPSpOm3AcdYvoJS8kzbiqfAwH77wO_-auA@mail.gmail.com>
	<20140521201108.76ab84af@notabene.brown>
	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>
	<20140522094835.3bf5ba5a@notabene.brown>
Date: Wed, 21 May 2014 21:04:27 -0700
Message-ID: <CAPcyv4i3Kki80QRzEszGNC__-NLY_K_QdbMNp0BFzDkSkoc-_w@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: NeilBrown <neilb@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
	Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 21, 2014 at 4:48 PM, NeilBrown <neilb@suse.de> wrote:
[..]
> What might the control interface look like
> I imagine something like dynamic_debug, which a file that lists all the
> dynamic_config options.  Writing some message to the file would enable the
> selected options, and so the dynamic code editing required to enable it.

Ooh, yes, an interface similar to dynamic debug control seems like a good fit.

> I think it is probably worth trying - see what sort of take-up it gets.

Thanks Neil! ...as everyone else moans, "don't encourage him". ;-)
