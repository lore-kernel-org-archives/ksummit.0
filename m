Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC188ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 22:36:09 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 15C61A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 22:36:08 +0000 (UTC)
From: Peter =?iso-8859-1?q?H=FCwe?= <PeterHuewe@gmx.de>
To: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 13 Jul 2015 00:38:01 +0200
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201507130038.01474.PeterHuewe@gmx.de>
Subject: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

as we talked about recruiting in the other thread I realized that one thing 
that might reduce the entrance barrier a bit (apart from tooling and flow) 
would be proper documentation.

I know documenation is usually not a developers most favorite task, but here 
are my findings anyway:



I had a quick look into our guideline (Documentation/kernel-doc-nano-
HOWTO.txt) and it states:

1)
> We definitely need kernel-doc formatted documentation for functions
> that are exported to loadable modules using EXPORT_SYMBOL.
This is definitely not the case at the moment :/ -- there are a lot of 
undocumented EXPORT_SYMBOL functions.

2)
> We also look to provide kernel-doc formatted documentation for
> functions externally visible to other kernel files (not marked
> "static").
Even less

3)
> We also recommend providing kernel-doc formatted documentation
> for private (file "static") routines, for consistency of kernel
> source code layout.  But this is lower priority and at the
> discretion of the MAINTAINER of that kernel source file.
Don't even talk about that :)


Imho new code should definitely have this documentation, especially for #1 and 
#2 -- but maybe even for #3.




So this leads me to following questions:
- How can we easily identify missing documentation? 
-- Maybe Julia can come up with some coccinelle magic?
-- Maybe even mark non-extractable documentation and convert it.
-- In the document it mentions scripts/basic/doproc.c checks for missing 
documentation, but this file does not exist anymore :/




- how can we (automatically) support documentation? 
-- Can / should we create a tool that annotates functions and data types with 
a template documentation (I know good editors do something similar, but is the 
proposed style in concordance with the kernel doc style? At least it looks 
quite a lot like doxygen?)

- How different is the kernel doc style to doxygen?


- We are constantly looking for tasks newcomers can take on -- writing 
appropriate documentation is usually not that hard on the one hand and on the 
other people will learn a lot about the code they are documenting.
-- maybe make it easier make use of Steven Rostedts proposed Kernel Patch 
submitting web form :P

- new checkpatch option for checking the existance of documentation? *ducks 
and runs away*


- and who would be in to join me in documenting everything :P


Thanks,
Peter
