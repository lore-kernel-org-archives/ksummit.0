Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82D5941C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:49:29 +0000 (UTC)
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0097CE3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:49:28 +0000 (UTC)
Received: by wicgb10 with SMTP id gb10so39955082wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:49:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55AD7E2C.9090804@roeck-us.net>
References: <20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
	<20150720203007.GA7797@kroah.com> <55AD7263.8050605@roeck-us.net>
	<20150720223242.GB23638@kroah.com> <55AD7E2C.9090804@roeck-us.net>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Mon, 20 Jul 2015 18:49:07 -0500
Message-ID: <CAErSpo5PJWh960JVdZBr77P7ok0zmTbbW7r7E_3UmGTRWgEwqg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, Jul 17, 2015 at 10:48 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Sat, 18 Jul 2015 11:42:28 +1000
> NeilBrown <neilb@suse.com> wrote:
>
>> We talk a lot about creating tooling to help newbies submit perfect
>> patches.  Maybe we need to spend more time creating tooling to help old
>> timers accept imperfect patches.
>
> +1

+10

I do some work in gerrit, where patches are "automatically" merged by
the submitter after being approved by reviewers.  It is a real hassle
because every last nit has to be removed for the automatic merge to
work, and the nits are hard for non-experts to discover.  The
environment would feel much friendlier if there were a human
maintainer involved who could say "this patch belongs on branch X
instead," or "this patch needs to be rebased to Y," or whatever.
These are trivial for the right person to do, but often hard for the
submitter.

On the maintainer side, I spend a lot of time trying to coordinate
between patchwork (as a to-do list) and mutt (for reviewing and
applying patches).  It's a lot of pointing and clicking for not much
real value.  I know I could benefit from learning how other people do
this, because I'm sure I'm not doing it the best way.

Bjorn
