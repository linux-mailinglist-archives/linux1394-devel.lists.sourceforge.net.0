Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67294191314
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 15:26:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGkVr-000239-E7; Tue, 24 Mar 2020 14:26:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1jGkVq-000231-0D
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F54dJUfQshcULUsKVt/b/pbO2I3S2EmkSFj3pFHdm6g=; b=mwRaPkHMHP+URweT1wBcduSnwI
 hUicvUbip/7brHN/qiqLXSTQWyZgfOatYgaqBoRL8pvgt7q/w9NoJ6FrkIhy0f6QRglyDyutwZA8o
 LNagVd4i4kdm/ZJbDBb6eC7Os7Ce0nu8Z3iNa8bC9iLCNMXWF2bhm9x2wMLdVl0Ttm1A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F54dJUfQshcULUsKVt/b/pbO2I3S2EmkSFj3pFHdm6g=; b=P
 Zyv++ZM0xyshfwvhTt1MxPxcbj7tIIjxvk0DE+P+IAVBW+pLMNDZV/v91ErXp0iD/gSpCNzZ329tg
 eI1ozwRMH+R69KF7ELXU903sjd/D0NAEWqbVMS/Joc3MfgAEQRrw2t+HRLWOvwgXKF81UDsOieF7b
 Mal7ibpI8I8CHPP0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGkVi-005iXC-VA
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:26:37 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A89920788;
 Tue, 24 Mar 2020 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585059985;
 bh=W72EyAFq0FCm9QIKhSXp3XyiTvut10jCNZJJMOEXB4g=;
 h=From:To:Cc:Subject:Date:From;
 b=Cg5LJFQhT8vxviEDosUvpWv2OH5aIDsvOMZ538snhvHMGdnpoPDRpxH4Mfjnxh8xJ
 yCKhHwSm5TMo61xKa5FrUQawnT/N3GhoKNvj1GtfLHJu5GsjOSKZfwfMnD3a0BNNtd
 Yk9Yo5w0BbdPphQKQcrr226CdGzdUnlZ+5EWo0dY=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jGkVb-00266M-E8; Tue, 24 Mar 2020 15:26:23 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2 00/20] Reorganize media Kconfig
Date: Tue, 24 Mar 2020 15:26:01 +0100
Message-Id: <cover.1585059896.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jGkVi-005iXC-VA
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This patch series do lots of reorg at the media Kconfig options.
It also move test drivers from platform dir to a new one.

After this change, the main config is organized on menus, allowing to
select:

	- type of devices selection - the filtering options
	- Media core options - with API and other core stuff
	- Media core extra options
	- Media drivers
	- Media ancillary drivers

The "type of devices" menu has the filtering options for:

	- Cameras and video grabbers
	- Analog TV
	- Digital TV
	- AM/FM radio receivers/transmitters
	- SDR
	- CEC
	- Embeded devices (SoC)
	- Test drivers

This way, one interested only on embedded devices can unselect
everything but "Embedded devices (SoC)" option.

Distros for PC/Laptops can enable everything but 
"Embedded devices (SoC)" and "Test drivers".

Users can select just what they want, without bothering with
hundreds of options that he won't have any clue about their
meanings.

--

Series re-sent, as it was posted by mistake at the wrong ML.


Mauro Carvalho Chehab (20):
  media: dvb-usb: auto-select CYPRESS_FIRMWARE
  media: Kconfig: not all V4L2 platform drivers are for camera
  media: pci: move VIDEO_PCI_SKELETON to a different Kconfig
  media: reorganize the drivers menu options
  media: Kconfig: update the MEDIA_SUPPORT help message
  media: Kconfig: use a sub-menu to select supported devices
  media: Kconfig: add an option to filter in/out the embedded drivers
  media: split test drivers from platform directory
  media: Kconfig: make filtering devices optional
  media: Kconfig: move CEC-specific options to cec/Kconfig
  media: Kconfig: move comment to siano include
  media: Kconfig: move DVB-specific options to dvb-core/Kconfig
  media: Kconfig: move V4L2 subdev API to v4l2-core/Kconfig
  media: Kconfig: move drivers-specific TTPCI_EEPROM Kconfig var
  media: Kconfig: move media controller core select to main Kconfig
  media: Kconfig: better organize menu items
  media: Kconfig: mode firewire comment to firewire/Kconfig
  media: Kconfig: place all options under a sub-menu
  media: Kconfig: move the position of sub-driver autoselection
  media: Kconfig: on !EMBEDDED && !EXPERT, enable driver filtering

 drivers/media/Kconfig                         | 216 ++++++++++--------
 drivers/media/cec/Kconfig                     |  10 +
 drivers/media/common/Kconfig                  |   2 +-
 drivers/media/dvb-core/Kconfig                |  26 +++
 drivers/media/firewire/Kconfig                |   5 +-
 drivers/media/mc/Kconfig                      |   9 -
 drivers/media/mmc/Kconfig                     |   1 -
 drivers/media/mmc/siano/Kconfig               |   2 +
 drivers/media/pci/Kconfig                     |  10 +
 drivers/media/platform/Kconfig                |  24 --
 drivers/media/platform/Makefile               |   5 -
 drivers/media/test_drivers/Kconfig            |  28 +++
 drivers/media/test_drivers/Makefile           |   9 +
 .../vicodec/Kconfig                           |   0
 .../vicodec/Makefile                          |   0
 .../vicodec/codec-fwht.c                      |   0
 .../vicodec/codec-fwht.h                      |   0
 .../vicodec/codec-v4l2-fwht.c                 |   0
 .../vicodec/codec-v4l2-fwht.h                 |   0
 .../vicodec/vicodec-core.c                    |   0
 .../media/{platform => test_drivers}/vim2m.c  |   0
 .../{platform => test_drivers}/vimc/Kconfig   |   0
 .../{platform => test_drivers}/vimc/Makefile  |   0
 .../vimc/vimc-capture.c                       |   0
 .../vimc/vimc-common.c                        |   0
 .../vimc/vimc-common.h                        |   0
 .../vimc/vimc-core.c                          |   0
 .../vimc/vimc-debayer.c                       |   0
 .../vimc/vimc-scaler.c                        |   0
 .../vimc/vimc-sensor.c                        |   0
 .../vimc/vimc-streamer.c                      |   0
 .../vimc/vimc-streamer.h                      |   0
 .../{platform => test_drivers}/vivid/Kconfig  |   0
 .../{platform => test_drivers}/vivid/Makefile |   0
 .../vivid/vivid-cec.c                         |   0
 .../vivid/vivid-cec.h                         |   0
 .../vivid/vivid-core.c                        |   0
 .../vivid/vivid-core.h                        |   0
 .../vivid/vivid-ctrls.c                       |   0
 .../vivid/vivid-ctrls.h                       |   0
 .../vivid/vivid-kthread-cap.c                 |   0
 .../vivid/vivid-kthread-cap.h                 |   0
 .../vivid/vivid-kthread-out.c                 |   0
 .../vivid/vivid-kthread-out.h                 |   0
 .../vivid/vivid-kthread-touch.c               |   0
 .../vivid/vivid-kthread-touch.h               |   0
 .../vivid/vivid-meta-cap.c                    |   0
 .../vivid/vivid-meta-cap.h                    |   0
 .../vivid/vivid-meta-out.c                    |   0
 .../vivid/vivid-meta-out.h                    |   0
 .../vivid/vivid-osd.c                         |   0
 .../vivid/vivid-osd.h                         |   0
 .../vivid/vivid-radio-common.c                |   0
 .../vivid/vivid-radio-common.h                |   0
 .../vivid/vivid-radio-rx.c                    |   0
 .../vivid/vivid-radio-rx.h                    |   0
 .../vivid/vivid-radio-tx.c                    |   0
 .../vivid/vivid-radio-tx.h                    |   0
 .../vivid/vivid-rds-gen.c                     |   0
 .../vivid/vivid-rds-gen.h                     |   0
 .../vivid/vivid-sdr-cap.c                     |   0
 .../vivid/vivid-sdr-cap.h                     |   0
 .../vivid/vivid-touch-cap.c                   |   0
 .../vivid/vivid-touch-cap.h                   |   0
 .../vivid/vivid-vbi-cap.c                     |   0
 .../vivid/vivid-vbi-cap.h                     |   0
 .../vivid/vivid-vbi-gen.c                     |   0
 .../vivid/vivid-vbi-gen.h                     |   0
 .../vivid/vivid-vbi-out.c                     |   0
 .../vivid/vivid-vbi-out.h                     |   0
 .../vivid/vivid-vid-cap.c                     |   0
 .../vivid/vivid-vid-cap.h                     |   0
 .../vivid/vivid-vid-common.c                  |   0
 .../vivid/vivid-vid-common.h                  |   0
 .../vivid/vivid-vid-out.c                     |   0
 .../vivid/vivid-vid-out.h                     |   0
 drivers/media/usb/Kconfig                     |   6 +
 drivers/media/usb/dvb-usb/Kconfig             |   1 +
 drivers/media/v4l2-core/Kconfig               |  19 +-
 79 files changed, 222 insertions(+), 151 deletions(-)
 create mode 100644 drivers/media/test_drivers/Kconfig
 create mode 100644 drivers/media/test_drivers/Makefile
 rename drivers/media/{platform => test_drivers}/vicodec/Kconfig (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.c (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-fwht.h (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.c (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/codec-v4l2-fwht.h (100%)
 rename drivers/media/{platform => test_drivers}/vicodec/vicodec-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vim2m.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/Kconfig (100%)
 rename drivers/media/{platform => test_drivers}/vimc/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-capture.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-debayer.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-scaler.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-sensor.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.c (100%)
 rename drivers/media/{platform => test_drivers}/vimc/vimc-streamer.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/Kconfig (100%)
 rename drivers/media/{platform => test_drivers}/vivid/Makefile (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-cec.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-core.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-core.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-ctrls.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-kthread-touch.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-meta-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-osd.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-rx.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-radio-tx.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-rds-gen.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-sdr-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-touch-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-gen.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vbi-out.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-cap.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-common.h (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.c (100%)
 rename drivers/media/{platform => test_drivers}/vivid/vivid-vid-out.h (100%)

-- 
2.24.1




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
