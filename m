Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA5531026
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 20:46:43 +0000 (UTC)
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD25B76C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 20:46:42 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id o21-v6so4134393lfe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 13:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<alpine.LRH.2.21.1809250351090.21310@namei.org>
	<20180924181138.GA16086@tuxdriver.com>
In-Reply-To: <20180924181138.GA16086@tuxdriver.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 24 Sep 2018 22:46:29 +0200
Message-ID: <CAOesGMi3rRZj-qJ03HbSctPVZybHoaapQnffhj5eP+w7RdKDRw@mail.gmail.com>
To: "John W. Linville" <linville@tuxdriver.com>
Content-Type: text/plain; charset="UTF-8"
Cc: olof@lxom.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 24, 2018 at 8:15 PM John W. Linville <linville@tuxdriver.com> wrote:
>
> On Tue, Sep 25, 2018 at 03:51:14AM +1000, James Morris wrote:
> > On Mon, 24 Sep 2018, Shuah Khan wrote:
> >
> > > This decision to change the existing "Code of Conflict" signed off by a large number of developers,
> > > has been changed and committed with a few people signing off on it.
> > >
> > > It would be good to know the circumstances that necessitated the decision to include this patch
> > > without the proper review process. if that isn't possible, it is important to follow the review
> > > process now for v2. Also, discussing this in the Maintainer summit and/or kernel summit will not
> > > make the community feel like it is a community approved decision. At least, kernel community should
> > > be given a chance to discuss this change just like any other change.
> >
> > Not speaking on behalf of my employer, I agree with all of the above.
>
> +1
>
> Some number of folks feel (at least indirectly) chided or silenced by
> the new Code of Conduct. Many of those folks have expressed themselves
> ineloquently in a variety of venues. Much as one may disagree with
> some of their expressed sentiments, those expressions of frustration
> represent the feelings of some number of people in the real world.
>
> It seems likely to me that these folks are at least as likely to
> quit the community over their hurt feelings as have been the victims
> of Linus or any other grumpy maintainers. If we really care about
> maximizing the pool of contributors, we need to accomodate even those
> that aren't particularly comfortable with 'playing nice'. Giving them
> some say in establishing the rules seems extremely reasonable to me.

Ah yes, Popper's Paradox. The answer is not that we have to be
tolerant of the intolerant -- or at least not infinitely. We also all
know that people need a bit of time to adjust to new habits and I
think we should focus more on (quick) improvement over time than
absolutes. We're all humans.

I'd like to make a couple of personal opinions clear here (for
whatever it's worth):

1) The CoC was clear that we're using this _from now on_. I.e. let
bygones be bygones even if bad things might have happened (there are
extreme exceptions to this, but let's not go there).

2) Some seem to be focused on worst-case scenarios of the culture
changing to be something completely different from what it is today. I
don't think anyone involved wants this, and we shouldn't implement
something that strict here. I still want people to argue over and care
about code. I still look forward to everybody participating, and we
shouldn't be doing anything along the lines of lowering the quality
bar or prioritizing things differently from today.

However, I hope that when we do have disagreements, we won't reach
shouting in all caps and name-calling stage. If someone gets a bit too
tempered, people should feel free to reach out and talk about it --
and that said people are willing to listen and maybe take a few deep
breaths before considering if it's useful to continue communicating
like they were and tone it down. If we can get that far, that'd make a
huge difference.

The old Code of Conflict said "be excellent to each other", but people
weren't. Hopefully with this change, we can end up a whole lot closer
to that state.


-Olof
