Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F508258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 21:41:42 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA913121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 21:41:39 +0000 (UTC)
Date: Fri, 26 Aug 2016 17:41:36 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160826214136.e6oeapzxzwzichdb@thunk.org>
References: <CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	<1472230114.2751.67.camel@redhat.com>
	<CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
	<CAPeXnHswT0dSvdzvc1p7yr_cewXrX1mHi0dQE=p1E4sFkjn=HQ@mail.gmail.com>
	<CA+55aFyOSV0cRGEHWjsKMxsxjs6Kp6oghpE+-ueVFi7irnmSCA@mail.gmail.com>
	<CAPeXnHvKF2sPoiBiDCMEiguR1QScn5wNpQ7deaz=MDxofReNOw@mail.gmail.com>
	<1472241199.5189.86.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472241199.5189.86.camel@HansenPartnership.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 03:53:19PM -0400, James Bottomley wrote:
> 
> I think the disagreement is over *when* you give up and go for the
> final resort.  And who you trust to take that decision.
>

At the end of the day this is really a governance question.  There are
a huge number of stakeholders involved.  It includes the kernel
developers who do the work; and those who own the copyright; and those
who pay many of our salaries; and those who might pay our salaries in
the future if we can convince them to be good citizens; and so on.
Not all of them will be represented at the Kernel Summit.

It will include those entities who are GPL maximalists and who believe
that kernel modules are always infected by the GPLv2, and those who
take a looser interpretation of that particular issue.  And that's a
political question and a legal interpretation question.

(Disclosure: given that I supervised the student at MIT who ported the
Transarc's Andrew File System to Linux back in the 1990's, and who
requested a clarification from Linus that taking pre-existing third
party code and linking it to the Linux kernel via a kernel module
wouldn't make it a derived work leading to GPL infection, it should be
pretty clear where I fall on that spectrum.  During those early years
the Linux AFS port enabled the use of Linux by a huge number of MIT
students, faculty, and staff, as well as at other universities such as
CMU and even some National Labs.  As such, I consider that work to be
a Good Thing and am *completely* unapologetic if it upsets some of the
GPL maximalists out there.)

These sorts of legal / political questions are things for which I
believe the Kernel Summit isn't well equipped to handle.  In
particular, if the SFC has a pre-existing agenda --- that is, if they
have clients and have lawyers who who believe very strongly that the
next step is to "bring the question to a lot of Courts"[1] --- and
they want a forum to try to convince kernel developers to support them
in trying to force the courts around the world to give us an answer to
legal questions around the GPL --- that's inherently a political
question, and I don't think it's appropriate give them a soapbox to
try to let them advance that agenda at the Kernel Summit.

[1] https://lwn.net/Articles/695014/

I've already gotten more than one request from representatives from
other non-developer stakeholders requesting that they also be able to
attend.  And in fairness, if we were to give the SFC a soapbox, then
there will be any number of lawyers who would want to attend to make
sure that the interests of their clients would also be protected ---
and under what standards of fairness would we give lawyers with a
specific agenda that they want to push access, but deny access for
other lawyers to attend?  Let's just not go there.

The Linux Foundation has run Legal Summits before, and has invited
kernel developers to give input to the legal beagles at those Legal
Summits.  But we're talking about the Kernel Summit here, and not a LF
Legal Summit.

       	    	  	     	      	    - Ted
