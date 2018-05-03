Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E30429
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 03:52:32 +0000 (UTC)
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 37D4C6AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 03:52:32 +0000 (UTC)
Received: by mail-pg0-f65.google.com with SMTP id i29-v6so12122754pgn.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 May 2018 20:52:32 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Mark Brown <broonie@kernel.org>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
Date: Wed, 2 May 2018 20:52:29 -0700
MIME-Version: 1.0
In-Reply-To: <20180503031000.GC29205@thunk.org>
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

On 05/02/2018 08:10 PM, Theodore Y. Ts'o wrote:
> On Thu, May 03, 2018 at 11:05:50AM +0900, Mark Brown wrote:
>> On Wed, May 02, 2018 at 07:46:34PM +0000, Sasha Levin wrote:
>>
>>> As you said, the regression should be fixed "asap", not "immediately".
>>> It should go through some sort of review and testing the maintainers are
>>> happy with, but unfourtenately it doesn't happen now.
>>
>> Doesn't happen some of the time.  It's not like this is a universal
>> problem.
>>
>> Especially for driver specific things there's at times no realistic
>> prospect of getting useful independent review of fixes, the hardware
>> isn't always widely available and if the fix isn't a pure software thing
>> at some point you just have to trust the judgement of the vendor.
> 
> And sometimes the Demon Murphy will cause a regression fix for user A,
> to cause breakage for slightly different hardware belonging to user B.  :-(
> 

Believe me, I get my share of those. 7dac4a1726a9 ("ext4: add validity checks
for bitmap block numbers") and its fix 22be37acce25 (" ext4: fix bitmap
position validation") are pretty good examples. Yet, at the same time I had
to deal with three additional CVEs in the ext4 code. Even though the initial
fix for one of the four was buggy, I am glad that I got the other three through
stable releases.

As for -next, me and others stopped reporting bugs in it, because when we do
we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
them wet, and bugs in code which no one builds, much less tests or uses, won't
be found.

I can only repeat - what we need is more sophisticated testing, not a more
restrictive process.

Guenter
