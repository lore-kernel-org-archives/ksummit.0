Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1E449FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 22:31:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0173.hostedemail.com
	[216.40.44.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 24F6E112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 22:31:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id ACE82521B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 22:12:29 +0000 (UTC)
Date: Tue, 14 Jul 2015 18:12:26 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150714181226.474e50b8@gandalf.local.home>
In-Reply-To: <1436905046.2445.54.camel@HansenPartnership.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
	<20150714092955.2d28984b@gandalf.local.home>
	<1436905046.2445.54.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 14 Jul 2015 23:17:26 +0300
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> > I've been trying to get time to test against -next before the merge
> > window opens, because my tests usually discover these there. But I
> > don't always have time to do so.
> 
> Well, the more, the merrier.  If you have a suite of tests, just package
> it up and send it off to Fengguang if you don't have time to run it.

A lot of my tests are big time hacks. When I get time, I start to
convert them over to the ftrace selftests. Some have already been
converted. Some of those tests wont go because they take up too much
time, and the selftests are suppose to be rather quick.

Perhaps we should talk at KS about what to do with tests that are not
suitable for selftests but would be nice for others to run. Should we
have a selftests section for "this may take a while to finish"?

-- Steve
