Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27CBD707
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 15:34:12 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27E90A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 15:34:11 +0000 (UTC)
Message-ID: <1498145649.3989.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laura Abbott <labbott@redhat.com>, ksummit
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Thu, 22 Jun 2017 08:34:09 -0700
In-Reply-To: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-06-21 at 15:34 -0700, Laura Abbott wrote:
> Fedora tends to follow the most recent stable kernel very closely
> (e.g. 4.11.6 is currently pending for Fedora 24, 25, and 26).
> This works well enough, but there still seem to be some
> disconnects in the bug reporting process. Examples I can think of:
> 
> - When users report bugs on the Fedora tracker that look like
> actual upstream bugs, what's the best way to have those reported?
> I typically end up having to summarize from the Fedora bugzilla
> and send an e-mail which ends up being tedious. Can we make this
> bug reporting easier for non-kernel developers?

The way we handle bugzilla.kernel.org in SCSI is that it's vectored on
to the linux-scsi mailing list and bugzilla then captures the email
 interactions.  Can this be done with distro bugzillas as well?  You'd
still have to write the initial summary email and send it to the list
and add the cc to the bugzilla, but thereafter your bugzilla should
capture the interaction.  In our system, the reporter can use bugzilla
to interact with the list, because every bug report is vectored there
based on subsystem.  In your bugzillas, I think you can add the list as
a watcher of the bug, so if the original reporter adds something it
will get sent to the list.

James
