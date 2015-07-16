Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33CACBBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 00:27:19 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 892C711E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 00:27:18 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 16 Jul 2015 02:53:55 +0200
Message-ID: <16735160.dNHXzIZYtq@vostro.rjw.lan>
In-Reply-To: <20150713202818.23310729@lwn.net>
References: <55A1407E.5080800@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, July 13, 2015 08:28:18 PM Jonathan Corbet wrote:
> On Mon, 13 Jul 2015 21:02:26 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > Yes, it's great if we can catch things in -next. But I don't believe
> > that patches that fix bugs found in Linus's tree should sit in next
> > before going into Linus's tree, because those patches are basically
> > fixing stuff that was already in next and wasn't discovered until it
> > hit Linus's tree. Which is why I say it's a waste of time to put it in
> > next before sending straight to Linus.
> 
> That, of course, assumes that these fixes don't introduce *other* bugs
> that might just be caught in -next...
> 
> In general, though, I think a lot of people see -next as -rc1 without the
> quality control; it's volatile and scary.  So it's not surprising that it
> doesn't get a lot of real-world testing.  And, as long as that's the case,
> there's going to be a lot of bugs that are never caught in -next.

Well stated.

And in addition to that, -next is simply evolving too fast to get any deeper
testing at any point.

Thanks,
Rafael
