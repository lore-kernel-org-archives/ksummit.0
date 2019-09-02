Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48C7AD38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 15:09:50 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C5A9709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 15:09:49 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id n197so27752119iod.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 02 Sep 2019 08:09:49 -0700 (PDT)
To: Bjorn Helgaas <helgaas@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <0bdf3e0e-e352-8cac-5c38-fd6086681e8e@linuxfoundation.org>
Date: Mon, 2 Sep 2019 09:09:46 -0600
MIME-Version: 1.0
In-Reply-To: <20190830135857.GF7013@google.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 8/30/19 7:58 AM, Bjorn Helgaas wrote:
> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>> ...
>> Are there some additional topics that you'd like to suggest that we
>> discuss at the maintainer's summit?
> 
> I don't have an effective workflow for managing incoming patches.  I
> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
> to put patches on topic branches, review them, polish them, merge them
> together into a "-next" branch, generate pull requests, etc.
> 
> I wish there were a collection of the workflows and scripts people
> use, maybe even in the kernel sources so they could be shared and
> improved.  Some short screencasts could help visualize and pull things
> together.  I know a lot of this stuff is "out there" somewhere, but
> I'm not aware of any organized collection.
> 

This is a great idea. Folds in to my request make the script that pulls
in the Link tag widely available.


Patch version changes in commit logs?   (Shuah Kahn)
      How to make information about how commit has changed while being
      developed.  (A solution which has already been adopted by some
      maintainers is to use the Link: tag in the commit discussion).
      There have been a more recent discussion in this past week under
      subject line "Allowing something Change-Id (or something like it)
      in kernel commits".

I have a work-flow that works and I would like to learn from others and
improve mine.

thanks,
-- Shuah
