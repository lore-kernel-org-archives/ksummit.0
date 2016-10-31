Return-Path: <BATV+9f2b57e0cf1a0bd0b60c+4817+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFA4A5B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 12:30:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8541171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 12:30:40 +0000 (UTC)
Date: Mon, 31 Oct 2016 06:30:36 -0600
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20161031063036.6c04ddfa@vela.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org, linux-doc@vger.kernel.org
Subject: [Ksummit-discuss] Kernel documentation discussions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jon,

As I wake up too early today, due to the time zone differences, and inspired
by your article about documentation at lwn (https://lwn.net/Articles/704613/),
I decided to take some time and do some brain storming to help with 
the KS discussions. Feel free to pick the good things here, and discard 
the rest ;)

This is based on the work I've doing on the past few months with
the media conversion, and, mainly my work with regards to development
process and admin guides. Btw, I wrote some articles to document
the challenges on those two books that might be interesting for the
discussions too:
	https://blogs.s-osg.org/creation-linux-kernel-users-manual/
	https://blogs.s-osg.org/documenting-linux-kernel-development-process/

They're part of an attempt from my side As to document the challenges 
I'm having with the documentation conversion:
	https://blogs.s-osg.org/new-improved-linux-kernel-media-documentation/

I'm c/c Greg, as I listed several things related to the ABI documentation.

ReST conversion - some stats
============================

If I got it right, this is the current status

	- about 600 files on ReST
	- 305 ABI files + ABI/README
	- 32 files with translations to Japanase, Korean and Chinese;
	- 30 files on DocBook
	- about 6k plain files to be converted, being 97 files at the
	  Documentation/ root directory (96 after EDAC conversion,
	  with I did already).

There's still an elephant at the room: who will do the remaining
conversions :)

Items requiring some sort of definition
=======================================

(probably, we won't have time on KS regular time to discuss all of them)

Please notice that this is a brainstorm list, with items I remembered,
with no particular order.

1) Rename: Documentation -> doc (or docs)?
	- Change the location for the translated documents?

2) What to do with the remaining 96 files under Documentation?

I tried my best to put the "lose" files at Documentation/
under either admin-guide or process. Yet, I skip several files
because I didn't know for sure what to do with them...

	- There are some stuff there that could probably be
	  discarded (for example: eisa.txt);
	- There are some stuff there that probably belong to
	  driver-api or to some other subsystem (like, for example
	  video-output.txt, with seems to be some GPU documentation);
	- There are some stuff there that contains both admin
	  documentation and driver documentation (like, for example
	  ntb.txt, with contains ABI documentation, module parameters,
	- There are files there with even code examples for userspace
	  tools, like: cpu-load.txt
	- On most cases, some work is needed for those files that
	  are still there...

3) long-term strategy for 00-INDEX:

On converted files, the index will be auto-generated, and the index.rst files
will contain the documents. Should we keep maintaining the 00-INDEX files in
long term? or should we do something else:
	move it to /README?
	remove it?
	put only directories there?

4) Should we add a generic Sphinx module to run scripts (e. g.) kernel-cmd?

	- If so, what would be the rules for using it?

My suggestion it to block it to run only scripts under an specific
directory (like Documentation/sphinx) and selected scripts under ./scripts
(like ./get-maintainers and ./kernel-doc). Scripts that will be run should
be submitted to kernel-doc ML and acked-by the documentation maintainer
or merged via documentation tree.

5) ABI parsing via script;
	- IMHO, this the onlg viable way of handling it;
	- Perhaps add part of the contents of ABI/README at the rst file;
	- ABI format: sort, sub-chapters, etc;
	- ABI files with a "header" text;
	- Should ABI be kept under docs, if not converted to ReST?
	- Should we use a new tag to allow descriptions in ReST format?

6) MAINTAINERS file
   - Should we add it to process documentation? IMHO, we should, at least a
     "short" version of it, with the name/location of the modules, the
      git tree and the ML for submissions.

7) PDF, LaTeX and Math extension

Can it be improved?

Cheers,
Mauro
