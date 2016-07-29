Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7743271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 04:42:20 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
	[216.40.44.242])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 9D1921DB07
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 04:42:18 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id D83C123A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 01:06:27 +0000 (UTC)
Date: Thu, 28 Jul 2016 21:06:23 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Message-ID: <20160728210623.696c12d2@grimm.local.home>
In-Reply-To: <20160726133551.GU7094@linux.vnet.ibm.com>
References: <f423b811-88a4-b8ca-6793-1a543e8dc88d@suse.com>
	<Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
	<20160726133551.GU7094@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: jakub@redhat.com, parri.andrea@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	Alan Stern <stern@rowland.harvard.edu>,
	ramana.radhakrishnan@arm.com, luc.maranget@inria.fr, j.alglave@ucl.ac.uk
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 26 Jul 2016 06:35:51 -0700
"Paul E. McKenney" <paulmck@linux.vnet.ibm.com> wrote:

> On Tue, Jul 26, 2016 at 09:10:32AM -0400, Alan Stern wrote:
> > On Tue, 26 Jul 2016, Hannes Reinecke wrote:
> >   
> > > I have been playing around with RCUs and memory barriers quite a lot 
> > > recently, and found some really 'odd' use-cases in the kernel which 
> > > would benefit from improvements here.  
> > 
> > Could you post one or two examples?  It would be interesting to see 
> > what they involve.  
> 
> I would be intersted as well!
> 

Me too, as tracing plays a bit of magic with memory models as well.

-- Steve
