Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B2C73EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 00:38:36 +0000 (UTC)
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE06E18A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 00:38:35 +0000 (UTC)
Received: by mail-pf0-f177.google.com with SMTP id p14so1827637pfh.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 May 2018 17:38:35 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
Date: Wed, 2 May 2018 17:38:32 -0700
MIME-Version: 1.0
In-Reply-To: <20180503000620.GA29205@thunk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/02/2018 05:06 PM, Theodore Y. Ts'o wrote:
> On Wed, May 02, 2018 at 10:41:56PM +0200, Geert Uytterhoeven wrote:
>>
>> Between v4.17-rc1 and v4.17-rc3, there are 660 non-merge commits, of which
>>    - 245 carry a Fixes tag,
>>    - 196 carry a CC stable,
>>    - 395 contain the string "fix".
>> (non-mutually exclusive)
>>
>> That leaves us with 200 commits not falling in the bugfix category.
> 
> Some non-bug fixes are allowed in -rc2.  So perhaps what might be
> interesting is to look at v4.16 (which is completed), and look at the
> distribution of commits:
> 
> 	* regressions fixes (for bugs introduced during the current
> 		release cycle)
> 	* "normal" bug fixes
> 	* commits which don't touch code (e.g., spelling or
> 		documentation-only fixes)
> 	* other commits (features or cleanup fixes)
> 
> at each rcX level.  The historic "standard" has been feature commits
> in -rc1 and -rc2 (tolerated, but ideally should before the merge
> window), bug fixes / regressions in -rc3 and -rc4, and after -rc4,
> regression fixes only.  It would be interesting to see how well we
> have been holding to the historical ideal.
> 
> It would then be intersting to use Sasha's analysis to see whether
> there are more bug fixes caused by regression fixes versus normal bug
> fixes, and whether or not they are common when fixes come "out of
> cycle" --- for example, a non-regression bug fix in -rc5 or -rc6.
> 
> Because if that last is the case, then the prescription is very simple
> and not controversial --- bug fixes found post -rc4 should be held to
> the next merge window.
> 

Holding up even fixes for severe bugs for 4-6 weeks ? Seriously, that is
unrealistic. Holding up the fix for the next SpeckHammer because it was not
ready before -rc4 ? I don't think so.

Even when not counting severe problems, you are adding lots of additional work
for those who do and want to rely on stable releases to merge in bug fixes.
Sure, I am at times annoyed having to deal with a regression in a stable
release, but it very much beats digging through various mailing lists for
pending patches to fix CVEs, or for crashes seen in the field, just because
they are held hostage by some restrictive process. Even worse, I'd end up
picking the regressions anyway because I can _not_ wait those 4-6 weeks
plus the time it takes for the fixes to show up in a stable release.

Really, that just makes the situation worse for everyone. We would be much
better off by further improving test coverage.

Guenter
