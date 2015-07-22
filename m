Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 98A42323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 13:57:55 +0000 (UTC)
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10DED25B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 13:57:55 +0000 (UTC)
Received: by igbpg9 with SMTP id pg9so90006246igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 06:57:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150722090457.45562610@gandalf.local.home>
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
	<1437390546.22996.27.camel@infradead.org> <55ADA7C1.3050809@huawei.com>
	<20150721185436.20b97c47@notabene.brown>
	<20150722090457.45562610@gandalf.local.home>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Wed, 22 Jul 2015 08:57:34 -0500
Message-ID: <CAErSpo4HABmT=RvP5SMAykMCvd-3sH0rFhFbqsnVcbMOWxixSg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Jul 22, 2015 at 8:04 AM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Tue, 21 Jul 2015 18:54:36 +1000
> NeilBrown <neilb@suse.com> wrote:
>
>> On Tue, 21 Jul 2015 10:00:33 +0800 Zefan Li <lizefan@huawei.com> wrote:
>>
>> > > Then it should just be case of of asking Stephen to "put this tree last
>> > > in linux-next", and Linus to "pull this one last, right before
>> > > releasing -rc1". And getting the timing right for the script to run.
>> > >
>> >
>> > This makes git-blame less useful, and that's one of the reasons some
>> > maintainers don't like trivial cleanups.
>>
>> Sounds like we need to propose an enhancement to "git-blame"...
>>
>
> No need. I use git blame all the time. Trivial patches don't bother me.
>
> $ git blame foo.c
>
> $ git show abc123
>
> Sees that it's a trivial fix
>
> $ git blame abc123~1 foo.c
>
> $ git show def890
>
> More changes I don't care about
>
> $ git blame def890~1 foo.c
>
> $ git show cde456
>
> Ah! that's the change I was looking for!

I don't know if you'd find this more work or less, but I use "git log
-p foo.c" for this instead of git blame.  Unless there's been a rename
or a move between files, one invocation is usually enough.

Bjorn
