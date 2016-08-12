Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0EFD92C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:42:15 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8657E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:42:14 +0000 (UTC)
Date: Fri, 12 Aug 2016 07:42:11 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160812044211.xysb3larocxob342@redhat.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87inw1skws.fsf@x220.int.ebiederm.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
> I would really like to get a feel among kernel maintainers and
> developers if this is something that is interesting, and what kind of
> constraints they think something like this would need to be usable for
> the kernel?
> 
> Eric

Surprised that no one mentioned this yet - I think tagging
integers/structs as coming from userspace could be useful,
if we can teach e.g. smatch that access to a kernel
pointer through this offset might fault.

-- 
MST
