Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 439F3681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:12:12 +0000 (UTC)
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AABFE201B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:12:11 +0000 (UTC)
Received: by mail-qg0-f53.google.com with SMTP id f51so8862465qge.26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 12:12:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140506175842.GF20776@cloud>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
Date: Tue, 6 May 2014 13:12:10 -0600
Message-ID: <CAKocOON-kH3n7iQrdOcwU_Qwq5xxi6Ws2MnXJHLBz0NOQDSfug@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: josh@joshtriplett.org
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

On Tue, May 6, 2014 at 11:58 AM,  <josh@joshtriplett.org> wrote:
>
> I'm interested in this topic, and I'll second that nomination.  I'd
> like to partipate in this discussion.
>
> We need to have better processes for vetting new syscalls and ABIs far
> more carefully than we currently do.  Right now, we require benchmarks
> for any claimed performance increase; it's almost a given that if you
> post an optimization without including benchmarks in the commit message,
> it'll get rejected with a request to come back with numbers.  We need
> similar standards for new syscalls or other userspace ABIs: come back
> with test programs, test coverage information, etc.
>

I am interested in this topic as well. To be effective and keep the
momentum going long term , we will need a way to regression test when
new APIs, new syscalls and ABIs are introduced. That would require a
look at existing tests and look into putting in some kind of framework
to easily test for regressions. It would also mean, when new API, ABIs
get added, "strongly" encourage developers add documentation and tests
cases.

-- Shuah


> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
