Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68F1ED37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 09:13:15 +0000 (UTC)
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
	[209.85.222.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D37808B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 09:13:14 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id y10-v6so5218397uao.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 02:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<20180905085642.GA29931@kroah.com>
In-Reply-To: <20180905085642.GA29931@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 5 Sep 2018 11:13:01 +0200
Message-ID: <CAMuHMdW_XhDddW3KdpK0k0i5VtP8DGO4OCYw4n6tcy3OhKJObQ@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
	time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Greg,

On Wed, Sep 5, 2018 at 10:56 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Sep 05, 2018 at 10:32:45AM +0200, Jiri Kosina wrote:
> > But yeah, it's weak and doesn't solve the primary thing, which is just the
> > size of stable itself.
>
> I've held off on responding so far, but I think this is the big point of
> "fear" that many people seem to have with the stable updates over the
> past years.
>
> Yes, the "size" is bigger than before, but that is because of the
> following things:

[...]

> So yes, things are "bigger" than before, but still, overall, we are only
> accepting a small percentage of patches that hit Linus's tree (12
> patches a day for stable vs. 216 a day for Linus).
>
> Are you also worried that Linus's tree is getting "bigger"?  :)
>
> So we are larger than before, but this is a good thing, because we are
> actually catching more problems than we were before.  Which means your
> older kernels had more bugs...
>
> Anyway, just a comment in that you should not "fear" the increased size,
> it is to be expected as more people pay more attention to Linux,
> combined with the fact that we are still growing.  If the stable patches
> were shrinking, then I would get worried as that would imply that people
> don't care anymore.

So we're slowly evolving to the point where distros/companies/... can just
follow Linus' tree instead, and stable trees are no longer needed, except for
the last released point version (no-one wants to run plain rc1 or rc2) ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
