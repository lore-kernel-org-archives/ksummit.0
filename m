Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1EA15988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 08:17:06 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CA0EC1F895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 May 2014 08:17:03 +0000 (UTC)
Message-ID: <538449D2.5000508@huawei.com>
Date: Tue, 27 May 2014 16:16:18 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525141725.54db587a@canb.auug.org.au>
	<CAMuHMdXEEJnuV5tdv8kc=uaFxwTYn-Bh=T-e6n5zC4uFvRT3Ag@mail.gmail.com>
In-Reply-To: <CAMuHMdXEEJnuV5tdv8kc=uaFxwTYn-Bh=T-e6n5zC4uFvRT3Ag@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/25 16:53, Geert Uytterhoeven wrote:
> Hi Stephen,
> 
> On Sun, May 25, 2014 at 6:17 AM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>> On Sat, 24 May 2014 13:53:45 +0400 James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>>>
>>> The latter was supposed
>>> to be helped by having the Reviewed-by: tag so we gave credit to
>>> reviewers.  I've found the Reviewed-by tag to be a bit of a double edged
>>> sword: it is a good way of giving review credits, but I also see patches
>>> that come in initially with it on (usually the signoff and the
>>> reviewed-by are from people in the same company) ... it's not
>>> necessarily a bad thing, but it doesn't add much value to the kernel
>>> review process, because we're looking for independent reviews.  The
>>> other thing I find problematic is that some people respond to a patch
>>> with a Reviewed-by: tag and nothing more.  I'm really looking for
>>> evidence of actually having read (and understood) the patch, so the best
>>> review usually comes with a sequence of comments, questions and minor
>>> nits and a reviewed-by at the end.
>>
>> Some stats (I know you all love stats :-)):
>>
>> for next-20140523, no merge commits, origin/master..HEAD^ (exclude
>> Linus' tree and my Next files commit)
>>
>> commits: 7717
>> commits with more than one Signed-off-by: 6291
>> commits with Reviewed-by: 1369
>> commits with Tested-by: 354
>>
>> Not sure what these show ...
> 
> Thanks for the numbers!
> 
> How many Acked-by? Sometimes there's only a thin line between Acked-by
> and Reviewed-by.
> 

Correct. Some Acked-by's are actually Reviewed-by's, and somethimes people
reviewed the code withouting providing Reviewed-by's.

For me, Tejun and I are co-maintaining cgroup. At first I said acked-by
to some of his patches and said reviewed-by to others, and that made it
hard for Tejun to add tags to his patches, so we agreed that I'll just
always stick to acked-by.
