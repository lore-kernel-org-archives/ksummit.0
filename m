Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F181349D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 21 Oct 2018 23:37:15 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E9DE7FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 21 Oct 2018 23:37:15 +0000 (UTC)
Date: Sun, 21 Oct 2018 19:37:09 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20181021233709.GJ1617@thunk.org>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181021222608.GA24845@localhost>
Cc: NeilBrown <neil@brown.name>, Mishi Choudhary <mishi@linux.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
 Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Oct 21, 2018 at 11:26:08PM +0100, Josh Triplett wrote:
> On Mon, Oct 22, 2018 at 08:20:11AM +1100, NeilBrown wrote:
> > I call on you, Greg:
> >  - to abandon this divisive attempt to impose a "Code of Conduct"
> >  - to revert 8a104f8b5867c68
> >  - to return to your core competence of building a great team around
> >    a great kernel

I would point out that Greg did not chose to "impose" a Code of
Conduct.  That directive came from Linus; the change was signed off by
Linus, and the choice of the timing came from Linus.  That's why the
initial commit went in with very minimal review.  This series of
patches, especially the first two, have a very large number of
Acked-by sign-offs.  That's because there was a *huge* amount of
consultation with the top contributors to the kernel (using git
statistics) before the patch set was posted.

This level of consultation did not take place before Linus took his
break during -rc4, precisely because he didn't want people to think
that Greg did this "behind his back" and so there was no time to do
the sort of consultations which we did with this patch set.

(And when I say we, although the TAB was obviously involved, Greg did
most of the heavy lifting; and this is something that I can say
definitively Greg did out of a sense of duty, and because he was asked
to take on this role.  It obviously has *not* been a fun job, and Greg
has taken a lot of flak.  I, for one, thank Greg for taking on this
thankless task!)

> (I personally *do* want to see most of the patch series that started
> this particular thread dropped, because half of it undermines the point
> of the document. The original commit, however, is a matter of
> celebration.)

Josh, here I think it's clear a very large number of kernel developers
disagree with you.  Part of the concerns that led to creation of the
interpretation document was precisely because there was a lot of fear
mongering from people outside of the kernel development community,
some of them apparently from the Gamergate brigade.

And so while it is certainly true that a huge number of open source
projects use the Contributor's Convenant, and you don't see large
number of people getting "impeached" for stupid stuff from, say, the
GoLang project, there were a lot of people who *were* afraid that
perhaps, some of the insane/silly interpretations that had been flying
around might have actually been true.  Perhaps that's what Neil is so
worried about.

For example, it should have been obvious that if code is rejected for
technical reasons, some shadowy, unacountable group would ***not***
second guess the reasons for a maintainer's decision and magically
eject said maintainer from kernel development.  Maintainers still can
reject code for any technical reason, and in some cases, for good
non-technical reasons, such as the Netfilter team and code
contributions from someone who had been deemed, by his deeds, to be a
copyright troll.  And as always, people who disagree with a
maintainer's decision to reject a patch can always appeal directly to
Linus by sending the change to him.

The Linux kernel adopting the Contributor's Convenant was not going to
change this.  And certainly people haven't been using the
Contributor's Convenant to try to force crap ideas or crap code into
the Go language.  Unfortunately, because the Code of Conduct was
suddenly dropped in with minimal chance for consultations, that fear
was out there.  And that's why IMHO, the interpretation document
became necessary.

Ultimately, what we're after is a cultural change that will hopefully
strengthen the kernel community and make it a better place.  Neil is
correct that ultimately what's important is not words in a document,
but how people behave.  And so, if the words were causing a lot of
anxiety because were afraid that even accidental microagressions would
cause them to be permanently "impeached", and that failing to nit-pick
every possible microagression might be grounds for "impeaching" a
maintainer --- then making it clear that this is not what anyone had
in mind is a very important thing, since anxiety can lead to people
actively resist the cultural change which most of us are want and are
working towards.

Regards,
						- Ted
