Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF35BE7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 09:09:49 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C6ED784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 09:09:49 +0000 (UTC)
Message-ID: <1540285779.3347.27.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg Kroah-Hartman <greg@kroah.com>
Date: Tue, 23 Oct 2018 10:09:39 +0100
In-Reply-To: <20181022211025.GA8911@kroah.com>
References: <1540066514.3464.22.camel@HansenPartnership.com>
	<20181022211025.GA8911@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [GIT PULL] code of conduct fixes for 4.19-rc8
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-10-22 at 22:10 +0100, Greg Kroah-Hartman wrote:
> On Sat, Oct 20, 2018 at 01:15:14PM -0700, James Bottomley wrote:
> > This is the series of patches which has been discussed on both
> > ksummit-discuss and linux-kernel for the past few weeks.  As Shuah
> > said when kicking off the process, it's designed as a starting
> > point for the next phase of the discussion, not as the end point,
> > so it's only really a set of minor updates to further that goal.
> > 
> > The merger of the three patches to show the combined effect is
> > attached below.  However, Greg recently posted the next phase of
> > the discussion, so people will be asking what the merger of the
> > series looks like.  Ignoring the non-CoC documents, I think it
> > looks like this
> 
> Sorry for not responding sooner for this, travel and the meeting
> today took up my time.
> 
> Anyway, as we discussed today in the Maintainers summit, let's leave
> the Code of Conduct text alone for now.

I still think rejecting this pull request in favour of your own patches
rather than doing a combination is a process mistake.  However, I do
believe most people can live with the current status quo.  So I'm not
going to object further (and I'm grateful for the commitment to try to
be more transparent and actually follow our own processes next time we
do something like this that we also arrived at at the Maintainer
Summit).

>   It matches what "upstream" has with the exception of removing that
> one paragraph.

Um, and adding the interpretation paragraph; that paragraph is one of
the most significant changes because the interpretation document
corrals a lot of the potential effects of the undiluted contributor
covenant.

>   If you have issues with the wording in it, please work with
> upstream to fix the issues there as hundreds of other projects will
> benefit with your changes if they are really needed.

Deflection to "upstream" is a bit of a red herring on two counts:
firstly because we have no commitment to move to later revisions and
secondly because the interaction of the interpretation document with an
update is quite a big source of potential conflicts: to properly update
we'd have to update both documents which means us potentially rewriting
one or both again.

I also think deflection to "upstream" is a social mistake.  If you want
the community to own the code of conduct, you can't keep telling them
it's someone else's document.

James


> For now, let's let things settle down and not worry about
> hypothetical situations that might possibly happen in some way or
> another as we can debate that type of thing endlessly (it's a good
> skill we have which makes us great kernel developers, but it not
> always transferrable to other environments).
> 
> If real issues do come up in the future, we will address them then,
> as we always have the option to change and revisit things as needed.
> 
> thanks,
> 
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
