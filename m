Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EC9C2CBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 21:14:50 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA40BFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 21:14:49 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id a5-v6so11423875pgv.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 14:14:49 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 16 Oct 2018 14:14:46 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20181016211446.GA28549@roeck-us.net>
References: <20181016021254.GA21220@thunk.org>
	<3af0bf1d-6dea-2736-b4f0-171db8a2d447@de.ibm.com>
	<20181016205109.GB14947@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181016205109.GB14947@thunk.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] new topic: regression test infrastructure?
 (was Draft Maintainer's Summit Agenda and Attendees - )
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 16, 2018 at 04:51:09PM -0400, Theodore Y. Ts'o wrote:
> On Tue, Oct 16, 2018 at 09:53:06PM +0200, Christian Borntraeger wrote:
> > 
> > 
> > On 10/16/2018 04:12 AM, Theodore Y. Ts'o wrote:
> > > This is the draft agenda for the Maintainer's Summit which I and the
> > > program committee have come up with:
> > > [..] 
> > > 2:30 TBD
> > > [..]
> > > 4:30 TBD
> > 
> > Does it make sense to talk about existing test infrastructure 
> > (like syzbot,Geert Uytterhoeven and Guenter Roecks reports as well as all the others)
> > What architectures are missing? Is it ok to run tests in-house and only report errors?
> > What test scenarios are missing?
> 
> This would probably be better suited at the Kernel Summit track in
> Vancouver next month, as there will be a much larger number of kernel
> developers there.  The Maintainer's Summit is intended to focus much
> more process issues than specific technical questions.
> 

In Edinburgh: https://elinux.org/Automated_Testing_Summit
In Vancouver: https://blog.linuxplumbersconf.org/2018/testing-and-fuzzing-mc/

While is it good to see the increased interest in testing, I am not
sure if it makes sense to add yet another venue to discuss it.

Guenter

> Also, some of these questions are best answered by those who can bring
> resources to the table.  For example, it's easy for someone to point
> out that some architecture, like Itanium or pa-risc are "missing".
> But the people to whom we would need to be having that conversation
> would be Intel and HP, respectively, and both would likely say that
> those architectures are obscelent, and so they would probably decline
> to provide those resources.
> 
> Similarly, the question of whether, say, Power, or Z series, or Risc-V
> are "missing" are best targetted at the companies which back those
> architectures.
> 
> 					- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
