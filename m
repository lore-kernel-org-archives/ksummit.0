Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71D40414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:28:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0030.hostedemail.com
	[216.40.44.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1F9FD8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:28:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 29430212324
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:10:42 +0000 (UTC)
Date: Wed, 22 Jul 2015 10:10:39 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Bjorn Helgaas <bhelgaas@google.com>
Message-ID: <20150722101039.2ce09fd7@gandalf.local.home>
In-Reply-To: <CAErSpo4HABmT=RvP5SMAykMCvd-3sH0rFhFbqsnVcbMOWxixSg@mail.gmail.com>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
	<55ADA7C1.3050809@huawei.com>
	<20150721185436.20b97c47@notabene.brown>
	<20150722090457.45562610@gandalf.local.home>
	<CAErSpo4HABmT=RvP5SMAykMCvd-3sH0rFhFbqsnVcbMOWxixSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
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

On Wed, 22 Jul 2015 08:57:34 -0500
Bjorn Helgaas <bhelgaas@google.com> wrote:


> > Ah! that's the change I was looking for!
> 
> I don't know if you'd find this more work or less, but I use "git log
> -p foo.c" for this instead of git blame.  Unless there's been a rename
> or a move between files, one invocation is usually enough.

I've used "git log -p foo.c" before, but I find that some of my files I
work with, that is way too much info. Especially, when the commit I'm
looking for happens to be years old. I use the log -p for when I know
the change has been recent.

-- Steve
