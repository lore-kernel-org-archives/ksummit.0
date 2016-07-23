Return-Path: <behanw@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E014B4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 03:28:13 +0000 (UTC)
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 898C7218
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 03:28:13 +0000 (UTC)
Received: by mail-pf0-f179.google.com with SMTP id y134so46827085pfg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 20:28:13 -0700 (PDT)
To: Shuah Khan <shuahkhan@gmail.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<1469109732.120686.168.camel@infradead.org>
	<20160721162107.GN6509@sirena.org.uk>
From: Behan Webster <behanw@gmail.com>
Message-ID: <2289ea24-63fb-6705-612d-a60304cda3dd@gmail.com>
Date: Fri, 22 Jul 2016 20:28:10 -0700
MIME-Version: 1.0
In-Reply-To: <20160721162107.GN6509@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: sumit.semwal@linaro.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2016-07-21 09:21 AM, Mark Brown wrote:
> On Thu, Jul 21, 2016 at 03:02:12PM +0100, David Woodhouse wrote:
>> On Thu, 2016-07-21 at 07:41 -0600, Shuah Khan wrote:
>>> Would you be willing to share your experiences and the nature of bugs
>>> you were able to find using LLVM. Maybe that could be folded into this
>>> discussion as a real life experience.
>> http://llvm.linuxfoundation.org/index.php/Bugs
>> Probably horrifically out of date. Behan is the best person to ask for
>> a current status, I suspect...
> CCing in Sumit who I believe has also been looking at some issues
> building kernels with LLVM.
We're trying to start up the group again who was working on this a 
couple years ago. Part of that is figuring out an up to date list of 
issues. Some have been fixed, some are outstanding. And a few more 
things have been unearthed.

Despite other people seemingly interested in this, the traditional 
LLVMLinux people have mostly been moved to different projects and have 
had less time to concentrate on this topic, which is why things have 
fallen behind.

Behan

-- 
Behan Webster
behanw@gmail.com
