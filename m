Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 299F3885
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 11:18:05 +0000 (UTC)
Received: from mail9.hitachi.co.jp (mail9.hitachi.co.jp [133.145.228.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 71DF8201A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 11:18:04 +0000 (UTC)
Received: from mlsv6.hitachi.co.jp (unknown [133.144.234.166])
	by mail9.hitachi.co.jp (Postfix) with ESMTP id 6BF3E37C83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 20:18:03 +0900 (JST)
Received: from vshuts02.hitachi.co.jp (vshuts02.hitachi.co.jp [10.201.6.84])
	by mfilter06.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s55BI2Mr005999 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 5 Jun 2014 20:18:03 +0900
Message-ID: <539051E4.3040708@hitachi.com>
Date: Thu, 05 Jun 2014 20:17:56 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
	<CAKMK7uHpE0RrK+T2NbsefrJMwobrEqiXuYjrn3=gHHbmjsXoJQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHpE0RrK+T2NbsefrJMwobrEqiXuYjrn3=gHHbmjsXoJQ@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/06/05 17:53), Daniel Vetter wrote:
> On Thu, Jun 5, 2014 at 10:30 AM, Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
>> On Thu, Jun 5, 2014 at 8:54 AM, Mel Gorman <mgorman@suse.de> wrote:
>>> There is a hazard that someone bisecting the tree would need to be careful
>>> to not bisect LTP instead.
>>
>> That may actually be a good reason not to import LTP...
>> I'd imagine you usually want to bisect the kernel to find when a regression
>> was introduced in the syscall API.
>>
>> Is there a reason not to run the latest version of LTP (unless bisecting
>> LTP ;-)? The syscall API is supposed to be stable.
> 
> Same for validating backports - you want the latest testsuite to make
> sure you don't miss important fixes. Downside is that the testsuite
> needs to be compatible over a much wider range of kernels to be
> useful, which is a pain for e.g. checking that garbage in reserved
> fields (like reserved flags) are properly rejected on each kernel
> version.

Perhaps, the testsuite can recognize which patch is merged or not
if it can access the git repository by "git log | grep <commit-id>"
or something like that. Then, it can self-configure to reject
non-supported test. :)

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
