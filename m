Return-Path: <gregkh@linuxfoundation.org>
Date: Mon, 23 Jan 2017 12:35:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20170123113527.GB31821@kroah.com>
References: <31831.1485170425@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31831.1485170425@warthog.procyon.org.uk>
Cc: mchehab@s-opensource.com, apw@canonical.com, joe@perches.com,
	hans.verkuil@cisco.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] UAPI headers and inline function policy
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jan 23, 2017 at 11:20:25AM +0000, David Howells wrote:
> I noticed that include/uapi/linux/cec.h and cec-funcs.h export a bunch of
> inline functions to userspace.  I think that the following should possibly be
> prohibited in kernel UAPI headers:
> 
>  (1) Inline functions and function declarations.

As the lustre filesystem wants to do the same thing that cec is doing,
where would the best place be to put stuff like this that would
otherwise just require two independant copies to be kept in sync?

thanks,

greg k-h
