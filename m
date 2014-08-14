Return-Path: <ilendir@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E9A50AD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 19:57:21 +0000 (UTC)
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA68E20334
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 19:57:20 +0000 (UTC)
Received: by mail-la0-f53.google.com with SMTP id gl10so1567111lab.26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 12:57:18 -0700 (PDT)
Received: from ?IPv6:2001:638:a000:4142::ff0c:1ccf?
	([2001:638:a000:4142::ff0c:1ccf])
	by mx.google.com with ESMTPSA id kh9sm9252960lbc.5.2014.08.14.12.57.16
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 12:57:17 -0700 (PDT)
Message-ID: <53ED149C.8030104@gmail.com>
Date: Thu, 14 Aug 2014 21:57:16 +0200
From: Stefan Hengelein <ilendir@gmail.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <20140813180743.GB16662@roeck-us.net>
In-Reply-To: <20140813180743.GB16662@roeck-us.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
Reply-To: stefan.hengelein@fau.de
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

 > "My scope, which is more focused on testing, is a bit different.
 > Major problem I see is that many architecture maintainers don't seem 
to care
 > about "make allmodconfig" and/or "make allyesconfig", meaning there is no
 > simple means to at least compile-test all code that _can_ be enabled for
 > a given architecture. And don't even mention "make randconfig".

We [1] develop a tool (called 'vampyr'), which ships the desired 
functionality of compile-testing source code.
The Vampyr inspects the CPP blocks of a given source file and creates 
one or more  configurations to maximize the code coverage.  Once the 
configurations are generated, Vampyr triggers the compilation process on 
the given source files and reports compiler issues (i.e., warnings and 
errors) to the user.
Furthermore, Vampyr offers an interface to specify compilers to allow 
cross-compilation for other architectures such as ARM or MIPS. Note that 
Vampyr expands the configurations with "KCONFIG_ALLCONFIG=file.config? 
make allyesconfig", where  'allyesconfig' can be altered with the Vampyr 
interface (e.g. to 'allnoconfig'). On the current Linux HEAD the tool 
reaches a code coverage of 83 percent, whereas a plain "make 
allyesconfig" covers 64 percent of the source code [5]. You can find 
further information about the tool in a recently published paper on 
USENIX'14 [2].


 > Furthermore, allnoconfig disables CONFIG_MMU on architectures that 
support
 > nommu, which is less interesting, and thus need a KCONFIG_ALLCONFIG=
 > trick (I'd love to have just "make CONFIG_MMU=y allnoconfig" instead).

If you want to forcefully set specific features to be always off or 
always on, you can specify an additional whitelist and/or a blacklist.

For more information check out [3] or download the tarball containing 
the tool here [4].
If you have questions or desire more information about the tool, feel 
free to contact us.

Best Regards,
  Andreas Ruprecht, Valentin Rothberg, Stefan Hengelein

[1] https://www4.cs.fau.de/Research/CADOS/
[2] https://www4.cs.fau.de/Publications/2014/tartler_14_usenix.pdf
[3] http://vamos.informatik.uni-erlangen.de/trac/undertaker/wiki
[4] http://vamos.informatik.uni-erlangen.de/files/undertaker-1.5.tar.xz
[5] 
https://vamos.informatik.uni-erlangen.de/jenkins/job/vamos-linux-expansion-stats-weekly/103/artifact/expansion-bigtable.pdf 
user: public pw: i4guest

PS: Another interesting tool (unfortunately it's still in development) 
may be 'undertaker-checkpatch', which can be used to check Git commits 
for #ifdef-related bugs. We are planning to enhance this tool to run a 
Vampyr compile-test analysis on affected files.
