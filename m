Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E994AB01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:48:26 +0000 (UTC)
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 193612027C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 17:48:25 +0000 (UTC)
Received: by mail-ee0-f52.google.com with SMTP id e53so963172eek.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 May 2014 10:48:24 -0700 (PDT)
Message-ID: <536A71E6.2010405@gmail.com>
Date: Wed, 07 May 2014 19:48:22 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: josh@joshtriplett.org, Andy Lutomirski <luto@amacapital.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
In-Reply-To: <20140506175842.GF20776@cloud>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

On 05/06/2014 07:58 PM, josh@joshtriplett.org wrote:
> On Tue, May 06, 2014 at 10:45:05AM -0700, Andy Lutomirski wrote:
>> There doesn't currently seem to be any real process for reviewing new
>> core APIs for sanity of design, appropriateness to solve the problem
>> they're targetting, or correctness of implementation.
> [...]
>> I think that the process could be improved.  

I agree, and I think the required steps are pretty clear.
The question is how much will there is to implement them.

>>  I think that there are
>> people who are willing to spend time to read API docs and thinking
>> about these kinds of issues.  (I am, and Michael Kerrisk seems to do a
>> fair amount of it.)

Yes. And I'd do more if I had more time... My free (as in beer) time
is already overcommitted on that task.

>> I would like to discuss what we could change to make this work better
>> in the future.  In an ideal world, I would like to see every core API
>> change come with documentation, tests (possibly simple ones), and a
>> post, with acks, to a list that covers just API changes.  This might

That list would be (the largely overlooked) linux-api@

>> be tough, but it could add a lot of value.

Yes. As I've already said recently, there's an awful lot of crap
still hitting userspace.

>> I've occasionally thought that API docs should live in the kernel tree
>> in some reasonably well organized place so that patch sets can include
>> doc patches.  I realize that this is contentious.

I understand the arguments in favor, but I'm not sure that that 
technological measure would make much difference. And it's not so much
that it's contentious, it's just that there are, from my point of 
view, downsides to implementing it, which I've described here:
https://www.kernel.org/doc/man-pages/todo.html#migrate_to_kernel_source
There, among other things I hypothesize about an alternative:

    Employ a couple of patch tags in the style of "Signed-off-by:". 
    One of these could be (say) "ABI-changes-noted-by:", indicating 
    that someone has noted that this patch changes the API/ABI. The 
    other would be (say) "ABI-changes-doc-acked-by:", an indication
    from the appropriate documentation maintainer that the ABI
    changes have been documented in man-pages (or elsewhere if
    appropriate); details of the actual documentation could be
    included elsewhere in the patch's log message. 

What do others think of this?

>> I'm sure that other people have other suggestions here.
>>
>> --Andy
>>
>> P.S.  I'm not on the invitation nominee list, so if people like this
>> topic, I'd appreciate a nomination :)
> 
> I'm interested in this topic, and I'll second that nomination.  I'd
> like to partipate in this discussion.

So, would I.

> We need to have better processes for vetting new syscalls and ABIs far
> more carefully than we currently do.  Right now, we require benchmarks
> for any claimed performance increase; it's almost a given that if you
> post an optimization without including benchmarks in the commit message,
> it'll get rejected with a request to come back with numbers.  We need
> similar standards for new syscalls or other userspace ABIs: come back
> with test programs, test coverage information, etc.

I'd just want to add there that thorough documentation is integral part 
of this. Otherwise, how do we tell tell what we're testing against?

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
