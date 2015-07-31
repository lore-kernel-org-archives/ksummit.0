Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EB4F414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:41:27 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4AF15147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:41:26 +0000 (UTC)
Date: Fri, 31 Jul 2015 10:41:18 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150731144118.GA29787@thunk.org>
References: <1438182000.2204.35.camel@HansenPartnership.com>
	<1438184150.26511.77.camel@infradead.org>
	<1438187888.2204.83.camel@HansenPartnership.com>
	<1438191159.26511.91.camel@infradead.org>
	<1438213176.2204.152.camel@HansenPartnership.com>
	<1438243737.26511.114.camel@infradead.org>
	<1438264121.2229.11.camel@HansenPartnership.com>
	<1438268514.26511.216.camel@infradead.org>
	<1438273046.2229.37.camel@HansenPartnership.com>
	<1438283820.26511.243.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438283820.26511.243.camel@infradead.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, mcgrof@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I will note that this thread is a great demonstration why I very
*firmly* believe that legal issues (whether it is about license
interpretation or enforcement) should be completely out of scope for
the kernel summit.

About the only thing worse than programmers thinking they can play
lawyers on TV and render legal opinions are physicists at national
labs thinking they can tell computer science people how to design
operating systems and design scale-out computing architectures because
everything can be derived from F=ma.  :-)

						- Ted

On Thu, Jul 30, 2015 at 08:17:00PM +0100, David Woodhouse wrote:
> On Thu, 2015-07-30 at 09:17 -0700, James Bottomley wrote:
> > Well as you know, we disagree.  To me it reads like 
> 
> Thank you. I'm happy enough seeing "to me it reads like", followed by
> something I disagree with, rather than a claim of absolute truth.
> Especially in a case where we're hypothesising about what a court
> *might* rule, and we all know that courts can do entirely insane
> things.
> 
> That was the reason I jumped in.
> 
> I'm still kind of interested in what you think it means in the
> paragraph which explicitly refers to identifiable sections of a work
> which are "not derived from the Program, and can be reasonably
> considered independent and separate works in themselves", and concludes
> with the words "to each and every part regardless of who wrote it". 
> 
> As I understand your viewpoint so far, you seem to have rendered that
> whole paragraph entirely meaningless. But having got to this point I'm
> not sure I'm interested *enough* to continue that part of the
> conversation :)
> 
> > The original question wasn't about that, it was
> > whether shipping firmware as part of the kernel source tree would 
> > cause potential legal jeopardy for onward distributors.  The answer 
> > is no, as you agree above.
> 
> In the circumstance where the kernel is considered a joint work and its
> authors are considered to have consented to that inclusion, sure.
> 
> But estoppel doesn't help if we've pulled in GPL'd code from third
> parties (which we have), and if *those* third parties object to the
> combination of their code in a way that (as you said we could suppose
> for the sake of argument) violates the GPL. Which they might.
> 
> In that case, *we* have violated the licence of the third party code
> that we pulled in. That doesn't give onward distributors a free pass.
> 
> But Tim is right; this discussion is probably not really beneficial.
> 
> -- 
> dwmw2



> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
