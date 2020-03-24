Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E43219132A
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 15:28:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGkX9-0006Tt-Ut; Tue, 24 Mar 2020 14:27:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+huawei@kernel.org>) id 1jGkX8-0006TX-Am
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:27:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Skskxkmb76kKfbaGQm7uQ9rj58l3viEzMVExfbsscM=; b=NAW9T/HpjaXfd12iNQdmGNqtUH
 5br4xBmSuPz1Lq4cJws/HH89cVlToTkiz7yhhsCvYMq2Ty6HPOQFnKFHVXgv6MChhGzVe0Ah78xCw
 zri63CklGSj6cAMMDJyWaZpywfBS0Twt6KrZCnRDXlLvaol1nsDK89xL4q9YWX6JBrMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Skskxkmb76kKfbaGQm7uQ9rj58l3viEzMVExfbsscM=; b=Rpxy0EqrRirrhK5UhPkBhe5KMp
 cVMY+EeQmGMVqN4jhddDNtUNTBz2Yqs51lXFeaN/eWdUtx4OO/MVPlOQGMZgZHR/xx4mgsgJf2zjI
 RbpWmg3Zetg9wMJk6EqeSrYfiGJs0f/7A1yTP2Gmy/eotC6M4lJVWKFAtTE5gjpkIFxA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGkX6-00FGHX-Dc
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:27:58 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8D3520788;
 Tue, 24 Mar 2020 14:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585060068;
 bh=t+Sb33ZjPcisbGKgkhqBELHezEdoT5YtLW05AptApis=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xlWFO1kxav6222NoaAcI+ZLD07pDFnnXwyyfz1xW8ugDomdoIKwPN+MWyy1fB6sCA
 3Z4feHEJl9jgr0PwJb41t2UpjofJjFbdsIrUPThPR83LXlU5GuuamO2TJO8/oIpTti
 wE/4GduNQYPb9xMgxE2FZk/NOThBGNcYN9FJCw8I=
Date: Tue, 24 Mar 2020 15:27:42 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 00/20] Reorganize media Kconfig
Message-ID: <20200324152742.1e21d644@coco.lan>
In-Reply-To: <0e4b107c-eb85-9726-3e77-5999b9b6a0ef@xs4all.nl>
References: <cover.1585057134.git.mchehab+huawei@kernel.org>
 <0e4b107c-eb85-9726-3e77-5999b9b6a0ef@xs4all.nl>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xs4all.nl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jGkX6-00FGHX-Dc
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>, linux1394-devel@lists.sourceforge.net,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Em Tue, 24 Mar 2020 14:58:59 +0100
Hans Verkuil <hverkuil-cisco@xs4all.nl> escreveu:

> On 3/24/20 2:42 PM, Mauro Carvalho Chehab wrote:
> > This patch series do lots of reorg at the media Kconfig options.
> > It also move test drivers from platform dir to a new one.  
> 
> You sent this to linux-doc, but you probably meant linux-media.
> 
> Can you repost?

Oh! Sorry for that. I used the same git clone I have lots of doc patches,
as it would make easier for me to rebase, but forgot that the send
code inside .git/config was pointing to a different c/c list.

Resent.

> 
> Regards,
> 
> 	Hans
> 
> > 
> > After this change, the main config is organized on menus, allowing to
> > select:
> > 
> > 	- type of devices selection - the filtering options
> > 	- Media core options - with API and other core stuff
> > 	- Media core extra options
> > 	- Media drivers
> > 	- Media ancillary drivers
> > 
> > The "type of devices" menu has the filtering options for:
> > 
> > 	- Cameras and video grabbers
> > 	- Analog TV
> > 	- Digital TV
> > 	- AM/FM radio receivers/transmitters
> > 	- SDR
> > 	- CEC
> > 	- Embeded devices (SoC)
> > 	- Test drivers
> > 
> > This way, one interested only on embedded devices can unselect
> > everything but "Embedded devices (SoC)" option.
> > 
> > Distros for PC/Laptops can enable everything but 
> > "Embedded devices (SoC)" and "Test drivers".
> > 
> > Users can select just what they want, without bothering with
> > hundreds of options that he won't have any clue about their
> > meanings.
> > 
> > Mauro Carvalho Chehab (20):
> >   media: dvb-usb: auto-select CYPRESS_FIRMWARE
> >   media: Kconfig: not all V4L2 platform drivers are for camera
> >   media: pci: move VIDEO_PCI_SKELETON to a different Kconfig
> >   media: reorganize the drivers menu options
> >   media: Kconfig: update the MEDIA_SUPPORT help message
> >   media: Kconfig: use a sub-menu to select supported devices
> >   media: Kconfig: add an option to filter in/out the embedded drivers
> >   media: split test drivers from platform directory
> >   media: Kconfig: make filtering devices optional
> >   media: Kconfig: move CEC-specific options to cec/Kconfig
> >   media: Kconfig: move comment to siano include
> >   media: Kconfig: move DVB-specific options to dvb-core/Kconfig
> >   media: Kconfig: move V4L2 subdev API to v4l2-core/Kconfig
> >   media: Kconfig: move drivers-specific TTPCI_EEPROM Kconfig var
> >   media: Kconfig: move media controller core select to main Kconfig
> >   media: Kconfig: better organize menu items
> >   media: Kconfig: mode firewire comment to firewire/Kconfig
> >   media: Kconfig: place all options under a sub-menu
> >   media: Kconfig: move the position of sub-driver autoselection
> >   media: Kconfig: on !EMBEDDED && !EXPERT, enable driver filtering
> > 
> >  drivers/media/Kconfig                         | 216 ++++++++++--------
> >  drivers/media/cec/Kconfig                     |  10 +
> >  drivers/media/common/Kconfig                  |   2 +-
> >  drivers/media/dvb-core/Kconfig                |  26 +++
> >  drivers/media/firewire/Kconfig                |   5 +-
> >  drivers/media/mc/Kconfig                      |   9 -
> >  drivers/media/mmc/Kconfig                     |   1 -
> >  drivers/media/mmc/siano/Kconfig               |   2 +
> >  drivers/media/pci/Kconfig                     |  10 +
> >  drivers/media/platform/Kconfig                |  24 --
> >  drivers/media/platform/Makefile               |   5 -
> >  drivers/media/test_drivers/Kconfig            |  28 +++
> >  drivers/media/test_drivers/Makefile           |   9 +
> >  .../vicodec/Kconfig                           |   0
> >  .../vicodec/Makefile                          |   0
> >  .../vicodec/codec-fwht.c                      |   0
> >  .../vicodec/codec-fwht.h                      |   0
> >  .../vicodec/codec-v4l2-fwht.c                 |   0
> >  .../vicodec/codec-v4l2-fwht.h                 |   0
> >  .../vicodec/vicodec-core.c                    |   0
> >  .../media/{platform => test_drivers}/vim2m.c  |   0
> >  .../{platform => test_drivers}/vimc/Kconfig   |   0
> >  .../{platform => test_drivers}/vimc/Makefile  |   0
> >  .../vimc/vimc-capture.c                       |   0
> >  .../vimc/vimc-common.c                        |   0
> >  .../vimc/vimc-common.h                        |   0
> >  .../vimc/vimc-core.c                          |   0
> >  .../vimc/vimc-debayer.c                       |   0
> >  .../vimc/vimc-scaler.c                        |   0
> >  .../vimc/vimc-sensor.c                        |   0
> >  .../vimc/vimc-streamer.c                      |   0
> >  .../vimc/vimc-streamer.h                      |   0
> >  .../{platform => test_drivers}/vivid/Kconfig  |   0
> >  .../{platform => test_drivers}/vivid/Makefile |   0
> >  .../vivid/vivid-cec.c                         |   0
> >  .../vivid/vivid-cec.h                         |   0
> >  .../vivid/vivid-core.c                        |   0
> >  .../vivid/vivid-core.h                        |   0
> >  .../vivid/vivid-ctrls.c                       |   0
> >  .../vivid/vivid-ctrls.h                       |   0
> >  .../vivid/vivid-kthread-cap.c                 |   0
> >  .../vivid/vivid-kthread-cap.h                 |   0
> >  .../vivid/vivid-kthread-out.c                 |   0
> >  .../vivid/vivid-kthread-out.h                 |   0
> >  .../vivid/vivid-kthread-touch.c               |   0
> >  .../vivid/vivid-kthread-touch.h               |   0
> >  .../vivid/vivid-meta-cap.c                    |   0
> >  .../vivid/vivid-meta-cap.h                    |   0
> >  .../vivid/vivid-meta-out.c                    |   0
> >  .../vivid/vivid-meta-out.h                    |   0
> >  .../vivid/vivid-osd.c                         |   0
> >  .../vivid/vivid-osd.h                         |   0
> >  .../vivid/vivid-radio-common.c                |   0
> >  .../vivid/vivid-radio-common.h                |   0
> >  .../vivid/vivid-radio-rx.c                    |   0
> >  .../vivid/vivid-radio-rx.h                    |   0
> >  .../vivid/vivid-radio-tx.c                    |   0
> >  .../vivid/vivid-radio-tx.h                    |   0
> >  .../vivid/vivid-rds-gen.c                     |   0
> >  .../vivid/vivid-rds-gen.h                     |   0
> >  .../vivid/vivid-sdr-cap.c                     |   0
> >  .../vivid/vivid-sdr-cap.h                     |   0
> >  .../vivid/vivid-touch-cap.c                   |   0
> >  .../vivid/vivid-touch-cap.h                   |   0
> >  .../vivid/vivid-vbi-cap.c                     |   0
> >  .../vivid/vivid-vbi-cap.h                     |   0
> >  .../vivid/vivid-vbi-gen.c                     |   0
> >  .../vivid/vivid-vbi-gen.h                     |   0
> >  .../vivid/vivid-vbi-out.c                     |   0
> >  .../vivid/vivid-vbi-out.h                     |   0
> >  .../vivid/vivid-vid-cap.c                     |   0
> >  .../vivid/vivid-vid-cap.h                     |   0
> >  .../vivid/vivid-vid-common.c                  |   0
> >  .../vivid/vivid-vid-common.h                  |   0
> >  .../vivid/vivid-vid-out.c                     |   0
> >  .../vivid/vivid-vid-out.h                     |   0
> >  drivers/media/usb/Kconfig                     |   6 +
> >  drivers/media/usb/dvb-usb/Kconfig             |   1 +
> >  drivers/media/v4l2-core/Kconfig               |  19 +-
> >  79 files changed, 222 insertions(+), 151 deletions(-)
> >  create mode 100644 drivers/media/test_drivers/Kconfig
> >  create mode 100644 drivers/media/test_drivers/Makefile
> >  rename drivers/media/{platform => test_drivers}/vicodec/Kconfig (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/Makefile (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vicodec/vicodec-core.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vim2m.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/Kconfig (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/Makefile (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-capture.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-common.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-common.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-core.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-debayer.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-scaler.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-sensor.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/Kconfig (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/Makefile (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-core.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-core.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.h (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.c (100%)
> >  rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.h (100%)
> >   
> 



Thanks,
Mauro


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
