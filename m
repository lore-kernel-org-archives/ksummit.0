Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76A0487A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 21:12:04 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36E6A82C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 21:12:02 +0000 (UTC)
Date: Thu, 1 Nov 2018 14:11:53 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Message-ID: <20181101211152.GA6007@localhost>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
	<20181024121622.GA10942@localhost>
	<87ftwt6850.fsf@notabene.neil.brown.name>
	<20181027011010.GA29769@localhost>
	<20181101164544.GA31540@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181101164544.GA31540@linux.ibm.com>
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

On Thu, Nov 01, 2018 at 09:45:44AM -0700, Paul E. McKenney wrote:
> On Sat, Oct 27, 2018 at 02:10:10AM +0100, Josh Triplett wrote:
> > Not when that document started out effectively saying, in an elaborate
> > way, "code > people".
> 
> Interesting.
> 
> I am curious what leads you to your "code > people" statement.  Of course,
> one could argue that this does not really matter given that the code of
> conflict is no longer.  However, I would like to understand for future
> reference, if for no other reason.
> 
> One possibility is that you are restricting the "people" to only those
> people directly contributing in one way or another.  But those using the
> kernel (both directly and indirectly) are important as well, and it is
> exactly this group that is served by "the most robust operating system
> kernel ever", the chest-beating sentiment notwithstanding.  Which is in
> fact why I must reject (or rework or whatever) any patch that might result
> in too-short RCU grace periods:  The needs of the patch's submitter are
> quite emphatically outweighed by the needs of the kernel's many users,
> and many of the various technical requirements and restrictions are in
> fact proxies for the needs of these users.

As discussed in many other places as well, nobody is suggesting at all
that the standards for accepting code should change. Reject the patches
you would have rejected, accept the patches you would have accepted. All
of this affects *communication*.

- Josh Triplett
