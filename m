Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 16:22:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sean Paul <seanpaul@chromium.org>
Message-ID: <20180905142225.GA8757@kroah.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<CAOw6vbKa+85J0gDbh0Fj3GYQFcDma_qPPYjSUKxYvjmHvO3a5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOw6vbKa+85J0gDbh0Fj3GYQFcDma_qPPYjSUKxYvjmHvO3a5A@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 10:08:00AM -0400, Sean Paul wrote:
> > Which ones are you interested in?  I'd always prefer to hand off staging
> > drivers to an existing subsystem but it's not always clear who that
> > should be.
> 
> In the case of vboxvideo, we won't accept it in drm since it's not an
> atomic driver. staging's bar for entry was lower, so the driver was
> stuck in there. Perhaps we would have been better to take it in drm
> behind a config, but that's not ideal either.

for vboxvideo, I am pretty sure I got an "it's ok to put it there" from
the DRM maintainers before I accepted it.  So they know it is there :)

If it's not ever going to be merged, maybe we should just drop it?

thanks,

greg k-h
