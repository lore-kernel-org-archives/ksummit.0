Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 97FB79B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 20:36:07 +0000 (UTC)
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 684021FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 20:36:06 +0000 (UTC)
Received: by mail-ve0-f173.google.com with SMTP id pa12so4019064veb.18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 May 2014 13:36:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140508094109.GA3685@quack.suse.cz>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<20140507090628.GZ26890@mwanda>
	<20140507141503.GB12433@quack.suse.cz> <536AFC26.2080907@huawei.com>
	<20140508094109.GA3685@quack.suse.cz>
From: Andy Lutomirski <luto@amacapital.net>
Date: Thu, 8 May 2014 13:35:45 -0700
Message-ID: <CALCETrX344Yqd7G2v7nJ36jtgXFjFfQy=g6X8-JD=6MAhN0T-w@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset=UTF-8
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 8, 2014 at 2:41 AM, Jan Kara <jack@suse.cz> wrote:
> On Thu 08-05-14 11:38:14, Li Zefan wrote:
>> On 2014/5/7 22:15, Jan Kara wrote:
>> > On Wed 07-05-14 12:06:28, Dan Carpenter wrote:
>> >> On Tue, May 06, 2014 at 07:58:58PM -0700, Davidlohr Bueso wrote:
>> >>> I tend to think of LTP as a nice way of doing unit-tests for the uapi.
>> >>> Fengguang's scripts do include it, iirc, but I'm referring more to unit
>> >>> level tests. It serves well for changes in ipc, and should also for
>> >>> other subsystems.
>> >>
>> >> LTP is too complicated and enterprisey.  With trinity you don't can just
>> >> type:
>> >>
>> >>    ./configure.sh && make && ./trinity
>> >>
>> >> With LTP you have to read the install documents.  You can't run it
>> >> from your home directory so you have to build a virtual machine which
>> >> you don't care about before you install it.
>> >   Actually, I'm occasionally using LTP and it doesn't seem too bad to me.
>> > And it seems LTP is improving over time so I'm mostly happy about it.
>>
>> But how useful LTP is in finding kernel bugs? It seems to me we seldom
>> see bug reports which say the bug was found by LTP?
>   I'm handling a few (3-5) per year. I'm also extending the coverage (e.g.
> recently I've added fanotify interface coverage) when doing more involved
> changes to some code so that LTP can be reasonably used for regression
> checking.

There was some talk about having some kind of 'make test' that you can
type in a kernel tree.  I'm not sure what the plan is, if any.

I've been working on a tool called virtme that might be a useful thing
to build on.

--Andy
