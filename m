Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1633CA64
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 16:45:52 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8895976A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 16:45:51 +0000 (UTC)
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wA1GiPMs127747 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 1 Nov 2018 12:45:51 -0400
Received: from e17.ny.us.ibm.com (e17.ny.us.ibm.com [129.33.205.207])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2ng4xp8xhk-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 01 Nov 2018 12:45:50 -0400
Received: from localhost
	by e17.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Thu, 1 Nov 2018 16:45:49 -0000
Date: Thu, 1 Nov 2018 09:45:44 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Josh Triplett <josh@joshtriplett.org>
Reply-To: paulmck@linux.ibm.com
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
	<20181024121622.GA10942@localhost>
	<87ftwt6850.fsf@notabene.neil.brown.name>
	<20181027011010.GA29769@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181027011010.GA29769@localhost>
Message-Id: <20181101164544.GA31540@linux.ibm.com>
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

On Sat, Oct 27, 2018 at 02:10:10AM +0100, Josh Triplett wrote:
> On Fri, Oct 26, 2018 at 08:14:51AM +1100, NeilBrown wrote:
> > On Wed, Oct 24 2018, Josh Triplett wrote:
> > 
> > > On Tue, Oct 23, 2018 at 07:26:06AM +1100, NeilBrown wrote:
> > >> On Sun, Oct 21 2018, Josh Triplett wrote:
> > >> 
> > >> > On Mon, Oct 22, 2018 at 08:20:11AM +1100, NeilBrown wrote:
> > >> >> I call on you, Greg:
> > >> >>  - to abandon this divisive attempt to impose a "Code of Conduct"
> > >> >>  - to revert 8a104f8b5867c68
> > >> >>  - to return to your core competence of building a great team around
> > >> >>    a great kernel
> > >> >> 
> > >> >>  #Isupportreversion
> > >> >> 
> > >> >> I call on the community to consider what *does* need to be said, about
> > >> >> conduct, to people outside the community and who have recently joined.
> > >> >> What is the document that you would have liked to have read as you were
> > >> >> starting out?  It is all too long ago for me to remember clearly, and so
> > >> >> much has changed.
> > >> >
> > >> > The document I would have liked to have read when starting out is
> > >> > currently checked into the source tree in
> > >> > Documentation/process/code-of-conduct.rst .
> > >> 
> > >> I'm curious - what would you have gained by reading that document?
> > >
> > > I would have then had rather less of a pervasive feeling of "if I make
> > > even a single mistake I get made an example of in ways that will feed
> > > people's quotes files for years to come".
> > 
> > Thanks for your reply.  Certainly feeling safe is important, and having
> > clear statements that the community values and promotes psychological
> > safety is valuable.
> > 
> > The old "code of conflict" said
> >    If however, anyone feels personally abused, threatened, or otherwise
> >    uncomfortable due to this process, that is not acceptable. 
> > 
> > would you have not found this a strong enough statement to ward off that
> > pervasive feeling?
> 
> Not when that document started out effectively saying, in an elaborate
> way, "code > people".

Interesting.

I am curious what leads you to your "code > people" statement.  Of course,
one could argue that this does not really matter given that the code of
conflict is no longer.  However, I would like to understand for future
reference, if for no other reason.

One possibility is that you are restricting the "people" to only those
people directly contributing in one way or another.  But those using the
kernel (both directly and indirectly) are important as well, and it is
exactly this group that is served by "the most robust operating system
kernel ever", the chest-beating sentiment notwithstanding.  Which is in
fact why I must reject (or rework or whatever) any patch that might result
in too-short RCU grace periods:  The needs of the patch's submitter are
quite emphatically outweighed by the needs of the kernel's many users,
and many of the various technical requirements and restrictions are in
fact proxies for the needs of these users.

But you knew that already.

Similarly for the Linux kernel's various code-style strictures, which
serve the surprisingly large group of people reading the kernel's code.
Including the stricture that I most love to hate, which is the one
stating that single-line do/for/if/while statements must not be enclosed
in braces, which sometimes causes me trouble when inserting debug code,
but which also makes more code fit into a window of a given size.  ;-)

But you knew that already, too.

The maintainability requirements can be argued to mostly serve the
maintainers, but if the code becomes unmaintainable, future users
will be inconvenienced, to say the least.  So even the maintainability
requirements serve the kernel's many users.

But you also knew that already.

So what am I missing here?

							Thanx, Paul

>                       (Leaving aside that the more important detail
> would be the community actually acting consistently with the code of
> conduct it espoused.)
> 
> > In the current code, would The "Our Pledge" section have been
> > sufficient, or do you think the other sections would have actually
> > helped you?
> 
> "Our Standards" would have been at least as important to me personally,
> as would "Enforcement" (and more importantly, examples of that applying
> in practice and not just as empty words).
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
