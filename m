Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49C2616C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 00:05:46 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4127E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 00:05:45 +0000 (UTC)
Date: Fri, 14 Jun 2019 21:05:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190614210536.312fa988@coco.lan>
In-Reply-To: <b5af03d3-2286-32e9-f895-776b563df550@linuxfoundation.org>
References: <20190612085405.6045d95d@lwn.net>
	<f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
	<20190613112533.2176c5d4@coco.lan>
	<b5af03d3-2286-32e9-f895-776b563df550@linuxfoundation.org>
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

Em Fri, 14 Jun 2019 15:40:26 -0600
Shuah Khan <skhan@linuxfoundation.org> escreveu:

> On 6/13/19 8:25 AM, Mauro Carvalho Chehab wrote:
> > Em Wed, 12 Jun 2019 12:22:55 -0600
> > Shuah Khan <skhan@linuxfoundation.org> escreveu:
> >   

> > So, my advice here is to really invert things:
> > 
> > - do the conversion;  
> 
> Even this can be made into tasks. If you would like to experiment
> with and see how it works, send me a list of documents that you
> would like to see converted first.

After the patchsets I'm working it:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=convert_rst_renames_v5

There will be very few directories that doesn't any any .rst file:

$ for i in $(find Documentation/ -name '*.txt' | sed -E "s,(Documentation/[^\/+]+).*,\1,"|uniq|grep -v output |grep -v binding|grep -v devicetree); do if [ "$(find $i -name '*.rst')" == "" ]; then if [ -d $i ]; then echo $i; fi; fi; done

Documentation/platform
Documentation/scsi
Documentation/RCU
Documentation/cpu-freq
Documentation/ABI
Documentation/sphinx
Documentation/features
Documentation/acpi

Among those:

- There's nothing to be done at the sphinx directory.
- The cpu-freq maintainer won't want changes there, as the stuff inside
  that specific dir is obsolete.
- If I'm not mistaken, there's already a pending patchset for the
  acpi directory too.
- Platform has just a single file, easily convertible to ReST.
  I suspect that it should be moved to the laptops dir too.
  I guess I wrote a patch for it, but it seems it got lost on
  some rebase. Anyway, I can take care of this one.	
- We are handling the ABI directory on a different way. 

So, I guess that what it was left behind is:

	Documentation/scsi
	Documentation/RCU
	Documentation/features

You should notice, however, that there are some other directories
that have a mix of rst and txt files, with also have some files 
that could be needing conversion:

$ for i in $(find Documentation/ -name '*.txt' | sed -E "s,(Documentation/[^\/+]+).*,\1,"|uniq|grep -v output |grep -v binding|grep -v devicetree); do if [ -d $i ]; then echo $i; fi; done
Documentation/device-mapper
Documentation/sh
Documentation/trace
Documentation/misc-devices
Documentation/arm64
Documentation/platform
Documentation/scsi
Documentation/RCU
Documentation/virtual
Documentation/cpu-freq
Documentation/admin-guide
Documentation/block
Documentation/ABI
Documentation/translations
Documentation/PCI
Documentation/filesystems
Documentation/networking
Documentation/sphinx
Documentation/features
Documentation/netlabel
Documentation/acpi
Documentation/crypto
Documentation/sparc

I suspect that those dirs with contain botn .rst and .txt files are
in the process of being updated and converted by the subsystem
maintainers, but double check is needed.

Plus other places where there are files whose filename doesn't have any
extension at all and could be a text file to be converted:

$ for i in $(find Documentation/  -type f ! -name "*.*" | sed -E "s,(Documentation/[^\/+]+).*,\1,"|uniq|grep -v output |grep -v binding|grep -v devicetree); do if [ -d $i ]; then echo $i; fi; done
Documentation/misc-devices
Documentation/target
Documentation/firmware_class
Documentation/isdn
Documentation/media
Documentation/parisc
Documentation/spi
Documentation/scsi
Documentation/hwmon
Documentation/EDID
Documentation/nios2
Documentation/virtual
Documentation/i2c
Documentation/usb
Documentation/ABI
Documentation/translations
Documentation/openrisc
Documentation/w1
Documentation/filesystems
Documentation/networking
Documentation/auxdisplay

There are a few exceptions that should be kept as plain text
files. I remember of two such cases:

- a configuration file whose extension is .txt;
- a dump of chapter extracted from an old arch-specific manual
  with seems to be provided by its manufacturer.

While the last one could eventually be converted, it sounded
too much work for too little gain - and a format change may
eventually require some negotiation with the copyright holder.

Thanks,
Mauro
