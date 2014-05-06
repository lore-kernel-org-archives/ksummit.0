Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DE43382A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:17:10 +0000 (UTC)
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F0F420199
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:17:10 +0000 (UTC)
Received: by mail-ve0-f176.google.com with SMTP id jz11so7399777veb.21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 12:17:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKocOON-kH3n7iQrdOcwU_Qwq5xxi6Ws2MnXJHLBz0NOQDSfug@mail.gmail.com>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<CAKocOON-kH3n7iQrdOcwU_Qwq5xxi6Ws2MnXJHLBz0NOQDSfug@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 6 May 2014 12:16:49 -0700
Message-ID: <CALCETrVB=w1XzYfnugAEvPO2uTKChTDNvJrXN_-92LZ61bBAww@mail.gmail.com>
To: Shuah Khan <shuahkhan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 6, 2014 at 12:12 PM, Shuah Khan <shuahkhan@gmail.com> wrote:
> On Tue, May 6, 2014 at 11:58 AM,  <josh@joshtriplett.org> wrote:
>>
>> I'm interested in this topic, and I'll second that nomination.  I'd
>> like to partipate in this discussion.
>>
>> We need to have better processes for vetting new syscalls and ABIs far
>> more carefully than we currently do.  Right now, we require benchmarks
>> for any claimed performance increase; it's almost a given that if you
>> post an optimization without including benchmarks in the commit message,
>> it'll get rejected with a request to come back with numbers.  We need
>> similar standards for new syscalls or other userspace ABIs: come back
>> with test programs, test coverage information, etc.
>>
>
> I am interested in this topic as well. To be effective and keep the
> momentum going long term , we will need a way to regression test when
> new APIs, new syscalls and ABIs are introduced. That would require a
> look at existing tests and look into putting in some kind of framework
> to easily test for regressions. It would also mean, when new API, ABIs
> get added, "strongly" encourage developers add documentation and tests
> cases.

I think there was some discussion about in-tree kernel tests.  This
might fit in.

--Andy
