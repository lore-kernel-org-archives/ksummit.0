Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97685408
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:12:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com
	[216.40.44.94])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 250FCB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 15:12:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 9865D11ADF9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 12:42:55 +0000 (UTC)
Date: Thu, 23 Jul 2015 08:42:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150723084251.54da2be0@gandalf.local.home>
In-Reply-To: <20150723121441.GB29747@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 23 Jul 2015 14:14:41 +0200
Pavel Machek <pavel@ucw.cz> wrote:

> On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
> > On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> > 
> > > Significant percentage of phones run Linux kernel today, but geting
> > > mainline kernel to work on a phone is very hard to do. (So hard, that
> > > newest device that is close to working on recent mainline was made in
> > > 2009.) There are multiple obstacles, including huge patches from
> > > silicon vendors, missing GNU/Linux userspace support that makes kernel
> > > testing hard, interfaces unsuitable for phones and power management
> > > problems.

> 
> Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.

Seems like a reasonable topic, especially since KS is being held in
South Korea this year.

Although is this something to be a core topic or a tech topic? Does
this affect all subsystems, or just a set of drivers? Note, a core
topic wont get as much time for discussion as a tech topic would.

Also, what is expected to be solved at KS?

-- Steve
