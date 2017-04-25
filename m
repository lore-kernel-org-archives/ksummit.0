Return-Path: <prvs=52882b4431=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8FEA2B7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 15:09:32 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97835E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 15:09:30 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20170418201151.GA14118@kroah.com>
	<CA+55aFw+W=-8EbN46W=uTbOy67igN2LC1+13+wgFJ+i8vR4AGg@mail.gmail.com>
From: Chris Mason <clm@fb.com>
Message-ID: <3e438598-1d74-6698-f494-ff39921c4428@fb.com>
Date: Tue, 25 Apr 2017 11:09:10 -0400
MIME-Version: 1.0
In-Reply-To: <CA+55aFw+W=-8EbN46W=uTbOy67igN2LC1+13+wgFJ+i8vR4AGg@mail.gmail.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Dave Airlie <airlied@linux.ie>, Doug Ledford <dledford@redhat.com>, Ingo
	Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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



On 04/18/2017 04:21 PM, Linus Torvalds wrote:
> On Tue, Apr 18, 2017 at 1:11 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>>
>> I'd recommend Ben Hutchings for the help and work he does with stable
>> kernel releases as well.  Those numbers don't show up in your tree, but
>> in the stable releases, he is up there at with the amount of effort and
>> help he provides me, and the users of the trees he maintains (3.2 and
>> 3.16 for Debian).  I figure the stable trees do tie into "process
>> improvements" for some discussions.
>
> Absolutely.  And as already mentioned, I'd like to extend it further
> downstream and actually have distro people. Not tons, but to get the
> discussion going about what works for them and in particular how (if?)
> we could integrate those closer.

What kind of questions did you have for the distros?  As a semi-distro 
kernel, we're happy to pitch in with content about bugs, performance, 
pulling in stable etc, but for the most part things have been smooth lately.

It's not completely regression free from a performance point of view, 
but that's more our fault for not getting our workload specific 
benchmarks into more hands.

We've also had some driver bug drama, but nothing that I would say shows 
a need for process changes across the board.

-chris
