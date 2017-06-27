Return-Path: <daniel.vetter@ffwll.ch>
MIME-Version: 1.0
In-Reply-To: <20170626121939.qedzaccvqflhocq6@sirena.org.uk>
References: <20170623123936.42dab05f@lwn.net>
	<20170626121939.qedzaccvqflhocq6@sirena.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jun 2017 10:38:54 +0200
Message-ID: <CAKMK7uHwS0UsJtdOLstg01h3VajtPh_J7pzxQH65+fkJHfhgrQ@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 2:19 PM, Mark Brown <broonie@kernel.org> wrote:
> On Fri, Jun 23, 2017 at 12:39:36PM -0600, Jonathan Corbet wrote:
>
>> I can continue in this mode, but I do wonder if there's a better way out
>> there somewhere.  So I think there would be value in a session on the
>> maintenance of "subsystems" that don't fit neatly into the kernel
>> source-tree hierarchy.
>
> One thing I think it'd be good to do is work out a sensible way of
> keeping the maintainers of the relevant subsystems in the loop on things
> - a combination of the mechanics and how much effort we want to put into
> making sure people have at least seen things.  For example it looks like
> the regulator DocBook got converted to RST without me being aware of it
> (it seems I did get copied on one mail at some point but I can't have
> read it and there don't seem to have been any resends), that case isn't
> a problem itself but it seems like an area where things could end up not
> running smoothly.
>
> I know I rely fairly heavily on subject lines to filter what I'm looking
> at since some of my subsystems mean that I get copied on lots of random
> stuff that's of at most passing relevance to me which ends up being an
> issue with things like DT bindings sometimes (I think this is also part
> of what went wrong with the regulator conversion) but that doesn't
> scale since the subject lines can't easily be useful for multiple
> subsystems simultaneously.  I'm not sure what else to do though, we
> basically only have the subject lines and CC lists to work with here.

Looking at MAINTAINERS, there's relatively few entries for files under
Documentation/, and most are for individual files (about 450). None
are for one of the remaining DocBook files still in 4.12 afaics. I
think we can fix this problem by making sure that a) docs are sorted
usefully into directories (e.g. we put all the gpu stuff into
Documentation/gpu/) and b) there's MAINTAINERS entries for all of them
(which atm doesn't seem to be the case for a lot of stuff).

But I think the lack of clear maintainer responsibilities for docs was
something Jon already brough up at the previous KS, and we didn't
really get anywhere with it.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
