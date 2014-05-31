Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 31F67990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:30:35 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26168201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:30:33 +0000 (UTC)
Message-ID: <538930A9.50302@huawei.com>
Date: Sat, 31 May 2014 09:30:17 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
	<20140529233004.GB11741@kroah.com>
	<alpine.LFD.2.00.1405301201020.2009@localhost.localdomain>
	<20140530130728.GB2419@quack.suse.cz>
	<20140530112211.12ad856b@gandalf.local.home>
In-Reply-To: <20140530112211.12ad856b@gandalf.local.home>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
 Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/30 23:22, Steven Rostedt wrote:
> On Fri, 30 May 2014 15:07:28 +0200
> Jan Kara <jack@suse.cz> wrote:
> 
>>> This is not only about managers / company. Reviewers does not seem
>>> to have much recognition in upstream community either. For example
>>> we do take into account s-o-b when creating preliminary list of
>>> people to get invited to kernel summit, but we do _not_ take into
>>> account reviewd-by (or has anything changed?)...
>>   Reviewed-by *is* taken into account for KS selection. It is even
>> positively biased against s-o-b AFAIK.
> 
> Yes, it is very much taken into account. But so is all other
> activities. How much you participate is a key factor in KS selection.
> If you submit a 1000 patches in your little subsystem but don't make
> any attempt to review other patches or get involved with the rest of
> the kernel, you are very unlikely to be invited.

Do we account the activity on stable kernels? I guess the answer is no,
because you can't tell if a stable commit was backported automatically
or it was backported due to someone's request/help, and the latter
should be credited.
