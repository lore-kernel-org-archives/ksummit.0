Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66EEDA5E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:33:41 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA3FC7E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:33:40 +0000 (UTC)
Date: Mon, 17 Jun 2019 09:33:36 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Tanish Shinde <tanishshinde2006@gmail.com>
Message-ID: <20190617133336.GA4358@mit.edu>
References: <20190530060939.GA31454@mit.edu>
	<20190601090224.GB5261@mtr-leonro.mtl.com>
	<20190601094328.GB1998@kroah.com>
	<CAFTVhMc6cjQko4pMdK0Vq1wOj+Wv+sSgWzwULhVQQF9+AL02JA@mail.gmail.com>
	<CAFTVhMen6LqB2p8Ptq0CeUWw9hiJDVU6Z_70yMbQLSG2HbJVOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFTVhMen6LqB2p8Ptq0CeUWw9hiJDVU6Z_70yMbQLSG2HbJVOQ@mail.gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Anatomy Of The Linux Kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jun 01, 2019 at 11:22:32PM +0530, Tanish Shinde wrote:
> > I have taken the time to develop the framework for my next talk
> >  Structural Decomposition Of The Linux FileSystem #101
> > Please take this talk into consideration and I believe that this is very
> > high level discussion about the Linux Filesystem, and also tell me your
> > thoughts on it its pretty lengthy and incredibly detailed and requesting to
> > reply as soon as possible

Hi Tanish,

Apologies for the delay in responding.  In general, tutorial level
talks are not appropriate for either the Plumbers Conference or Kernel
Summit.

This applies both to your submission, "Building A Docker Engine On A
Custom Linux OS For Raspberry Pi 3" and your proposed talk,
"Structural Decomposition Of The Linux FileSystem".

A description of how Windows uses the C:/ and D:/, and contrasting
this with Linux's use of mounts and a single directory hierarchy, as
well as /bin, /boot, and /dev, is far too basic this conference.
The talks you have submitted appropriate for the Open Source Summit;
perhaps you should consider submitting them to those conferences?

At the Kernel Summit and Linux Plumbers Conference, most of the
attendees who are interested in file systems are people who write and
maintain new file systems in the kernel.  We will also have people who
create the container systems which are used as the basis of systems
like Docker.  Many attendes will have built one (or more!) automated
systems for creating root file systems for embedded systems on
Raspberry Pi's, mobile handsets, automative systems, etc, so a manual
walkthrough of how to install the boot loader, kernel, and root file
system on an image designed to be written onto a SD Card is not going
to be terribly interesting for the conference attendees.

Best regards,

						- Ted
