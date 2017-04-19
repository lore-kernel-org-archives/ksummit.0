Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C260B8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 13:36:02 +0000 (UTC)
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B540526B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 13:36:00 +0000 (UTC)
Received: by mail-oi0-f48.google.com with SMTP id r203so27323653oib.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 06:36:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170419102219.57aacbc4@canb.auug.org.au>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20170419102219.57aacbc4@canb.auug.org.au>
From: Shuah Khan <shuahkhan@gmail.com>
Date: Wed, 19 Apr 2017 07:35:59 -0600
Message-ID: <CAKocOONujWH0=pdpzhDgAWOadGyV+aU4Fpk7-nWb5-Q5yvqYKg@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 6:22 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi Linus,
>
> On Tue, 18 Apr 2017 11:59:37 -0700 Linus Torvalds <torvalds@linux-foundation.org> wrote:
>>
>> People who should be involved?
>
> I guess I should put my hand up.  I suppose I can come up with some
> process peeves :-)

Hi Linus and Stephen,

I have been seeing more instances of conflicts between kselftest tree
and mm, net, and x86. Not surprising. mm, net, amd x86 are the most
active areas for selftests and when new tests get added, they usually
depend on some feature. As as result, the test has to go through the
core tree. It has been resulting in conflicts with the regular
activity in kselftest tree.

Stephen has been seeing the conflicts when the trees get into
linux-next. Maybe something that could be addressed as a general topic
or if this is somewhat unique situation (it might be), I can work out
a plan offline with the maintainers involved. I don't think this topic
would require my presence at the summit. It could be easily discussed
on the mailing list.

thanks,
-- Shuah

>
> --
> Cheers,
> Stephen Rothwell
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
