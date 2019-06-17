Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5990EC21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 10:12:13 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1493BE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 10:12:12 +0000 (UTC)
Date: Mon, 17 Jun 2019 07:12:06 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190617071206.64154747@coco.lan>
In-Reply-To: <20190614210536.312fa988@coco.lan>
References: <20190612085405.6045d95d@lwn.net>
	<f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
	<20190613112533.2176c5d4@coco.lan>
	<b5af03d3-2286-32e9-f895-776b563df550@linuxfoundation.org>
	<20190614210536.312fa988@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 14 Jun 2019 21:05:36 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:

> Em Fri, 14 Jun 2019 15:40:26 -0600
> Shuah Khan <skhan@linuxfoundation.org> escreveu:
> 
> > On 6/13/19 8:25 AM, Mauro Carvalho Chehab wrote:  
> > > Em Wed, 12 Jun 2019 12:22:55 -0600
> > > Shuah Khan <skhan@linuxfoundation.org> escreveu:
> > >     
> 
> > > So, my advice here is to really invert things:
> > > 
> > > - do the conversion;    
> > 
> > Even this can be made into tasks. If you would like to experiment
> > with and see how it works, send me a list of documents that you
> > would like to see converted first.  
> 
> After the patchsets I'm working it:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=convert_rst_renames_v5
> 
> There will be very few directories that doesn't any any .rst file:
> 
> $ for i in $(find Documentation/ -name '*.txt' | sed -E "s,(Documentation/[^\/+]+).*,\1,"|uniq|grep -v output |grep -v binding|grep -v devicetree); do if [ "$(find $i -name '*.rst')" == "" ]; then if [ -d $i ]; then echo $i; fi; fi; done
> 
> Documentation/platform
> Documentation/scsi
> Documentation/RCU
> Documentation/cpu-freq
> Documentation/ABI
> Documentation/sphinx
> Documentation/features
> Documentation/acpi
> 
> Among those:
> 
> - There's nothing to be done at the sphinx directory.
> - The cpu-freq maintainer won't want changes there, as the stuff inside
>   that specific dir is obsolete.
> - If I'm not mistaken, there's already a pending patchset for the
>   acpi directory too.
> - Platform has just a single file, easily convertible to ReST.
>   I suspect that it should be moved to the laptops dir too.
>   I guess I wrote a patch for it, but it seems it got lost on
>   some rebase. Anyway, I can take care of this one.	
> - We are handling the ABI directory on a different way. 
> 
> So, I guess that what it was left behind is:
> 
> 	Documentation/scsi
> 	Documentation/RCU


> 	Documentation/features

This is actually a special case. I don't think that a plain txt->rst
conversion is the right thing to be done here.

IMO, it requires some further discussions.

The files there have a standard format, with is (poorly) documented
at Documentation/features/arch-support.txt.

Getting a random file there, the format has a description part and a
table (Documentation/features/debug/kprobes/arch-support.txt):

	# Feature name:          kprobes
	#         Kconfig:       HAVE_KPROBES
	#         description:   arch supports live patched kernel probe
	#
	    -----------------------
	    |         arch |status|
	    -----------------------
	    |       alpha: | TODO |
	    |         arc: |  ok  |
	    |         arm: |  ok  |
	...
	    |      xtensa: | TODO |
	    -----------------------

E. g. each file contains the name of a feature, its Kconfig
symbol, a description and a table with shows what architectures
support and what architectures don't.

I actually started converting it, but the results don't look nice.

The thing is: it is a lot easier for a "feature" maintainer to have
a single file with a per-architecture status, as he's free to update
the file without needing to be concerned about merge conflicts.

So, the current way makes a perfect sense from a developer's PoV.

-

However, for a Kernel user's perspective, he may be interested on
looking at this as a completely different way.

1) he may want to buy a hardware whose support a certain feature
   subset;

2) He has already some hardware, any may want to identify if a
   certain feature is there.


For (1), the best would be a table like:

=======  =====  ===== =====   =====       ======
Feature  alpha  arc   arm     arm64 ....  xtensa
=======  =====  ===== =====   =====       ======
KASAN    TODO   TODO  TODO    ok          ok
kdb      TODO   ok    ok      ok          TODO
...
=======  =====  ===== =====   =====       ======

(eventually with Kconfig and description, but we need to double check
if it won't bee to big at the pdf output).


And for (2), one file per architecture, with something like:


Feature status at x86 Architecture
==================================

=======   =================  ======  ==============================================
Feature   Kconfig            Status  Description
=======   =================  ======  ==============================================
KASAN	  HAVE_ARCH_KASAN    ok      arch supports the KASAN runtime memory checker
kgdb      HAVE_ARCH_KGDB     ok      arch supports the kGDB kernel debugger
...
=======   =================  ======  ==============================================


So, IMHO, the best thing to do with the feature files is an approach similar
to the one we're doing with ABI, e. g.:

1) improve the contents of "arch-support.txt" file for it to precisely
describe the format of the file, including the header. While not required,
eventually we could change the headers to something less prune to human
errors, e. g. to something like:

	name:	       kprobes
	Kconfig:       HAVE_KPROBES
	description:   arch supports live patched kernel probe

2) have a script similar to get_abi.pl that would parse, validate
and produce a per-architecture output file;

3) add a per-arch features file that will be automatically
generated by the script.

The script should be able to produce valid ReST output on all the
above formats, e. g.:

1) output per feature;

2) output per architecture;

3) output as a matrix feature x architecture.

This way, we could add the feature lists on multiple books:

	- admin-doc: feature x architecture view
	- arch-specific view: feature status for such specific arch
	- kAPI book: per feature output

Comments?

Thanks,
Mauro
