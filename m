Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5747AB28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 02:15:37 +0000 (UTC)
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB363200A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 02:15:35 +0000 (UTC)
Received: by mail-vc0-f182.google.com with SMTP id id10so1316784vcb.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 19:15:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281832550.1280@utopia.booyaka.com>
Date: Wed, 28 May 2014 21:15:34 -0500
Message-ID: <CAL_JsqKrqSSzg-BurzVOZsPYG5JQa56qwmtCYhfARUrNRMNs1g@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
To: Paul Walmsley <paul@pwsan.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 1:47 PM, Paul Walmsley <paul@pwsan.com> wrote:
> On Sat, 24 May 2014, James Bottomley wrote:
>
>> I'm sure there are many other things people could suggest.
>
> What's needed is to bring quality reviewers up to the same level of
> recognition and control as maintainers.
>
> Ideally, maintainers would recognize quality reviewers, and list them in
> the MAINTAINERS file - perhaps with an "R:" tag?  Maintainers would be
> expected to designate at least one quality reviewer, but ideally more, for
> a given subsystem.
>
> Then we should require every patch to have at least one "Reviewed-by:",
> aside from the maintainer's "Signed-off-by:" before being merged.  This
> "Reviewed-by:" could come from the maintainer, but ideally would come from
> a quality reviewer.
>
> Patch submitters would need to get their patches reviewed by at least one
> of the recognized reviewers before expecting it to be merged.
>
> Part of the goal here would also be to convert quality reviewers into
> co-maintainers over time, so maintainership duties can be spread among a
> larger group of people.

What really needs to change here as we already essentially have this
today. Getting more reviewer bandwidth is why we have 5 DT binding
maintainers. DT bindings are a bit unique in that almost everything
goes in thru other maintainers trees, so the role is almost entirely
reviews. But what's to say a co-maintainers role is not solely
reviews. How co-maintainers split up the load is really an internal
decision among them.

Do we really have people we trust to review that we wouldn't trust to
be a co-maintainer?

Rob
