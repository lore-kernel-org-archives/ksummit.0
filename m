Return-Path: <jic23@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CB439FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:08:37 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68E3014B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:08:36 +0000 (UTC)
In-Reply-To: <20150713161822.GA22325@roeck-us.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<2196355.jXBH4erg3y@avalon> <20150713161822.GA22325@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@kernel.org>
Date: Mon, 13 Jul 2015 18:59:16 +0100
To: Guenter Roeck <linux@roeck-us.net>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <8A741302-3BCD-487F-9DB7-425E9EDF8B8C@kernel.org>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 13 July 2015 17:18:22 BST, Guenter Roeck <linux@roeck-us.net> wrote:
>On Mon, Jul 13, 2015 at 01:00:14AM +0300, Laurent Pinchart wrote:
>> On Friday 10 July 2015 21:00:12 David Woodhouse wrote:
>> > On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
>> > > On Thu, 9 Jul 2015 19:07:06 -0700 Darren Hart wrote:
>> > > > As far as recruitment goes, I think we're talking about
>barriers to
>> > > > first-timers and such - and git-send-email is one of those
>things.
>> > > > Eventually, a developer> 
>> > > +1000
>> > > 
>> > > I still don't use git-send-email, as I afraid that I'll blow it
>and end
>> > > up sending a thousand patches to every developer that ever
>touched the
>> > > kernel ;-)
>> > 
>> > Rather than sending messages, it's actually better to put them as
>> > *drafts*, ready to be sent by the user's normal mailer. It's not
>hard
>> > to do this — I usually dump the mails into
>> > ~/.local/share/evolution/mail/local/.Drafts/new/ for example.
>> > 
>> > And then I can *read* them before sending them, which is good
>practice
>> > anyway. Am I the only person who often finds a final minor nit with
>> > their own patch, in that final read-through just before hitting
>'send'
>> > on an email?
>> 
>> Certainly not, but what prevents you from doing that with
>git-send-email ? In 
>> my workflow I always format patches with git-format-patch, proof-read
>them 
>> with my favourite $EDITOR and then use git-send-email to send them.
>> 
>This exactly mateches my workflow (with an added 0000-Summary for patch
>series where needed).
Likewise though often with a prestep of a sanity check in gitk.
>Guenter
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
